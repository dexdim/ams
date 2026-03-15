<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\Inventory\InventoryRequest;
use App\Models\Inventory;
use Illuminate\Http\Request;

class InventoryController extends BaseController
{
    /**
     * @var Inventory
     */
    protected $inventory;

    /**
     * Create a new controller instance.
     * @param Inventory $inventory
     */
    public function __construct(Inventory $inventory)
    {
        $this->middleware('auth:api');
        $this->inventory = $inventory;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('inventory.index');
    }

    public function search(Request $request)
    {
        $search = $request->input('search');

        $inventories = Inventory::where(function ($query) use ($search) {
            $query->where('idcode', 'LIKE', "%$search%")
                ->orWhere('name', 'LIKE', "%$search%")
                ->orWhere('description', 'LIKE', "%$search%")
                ->orWhere('status', 'LIKE', "%$search%")
                // Search categories table
                ->orWhereHas('category', function ($q) use ($search) {
                    $q->where('name', 'LIKE', "%$search%");
                });
        })
            ->latest()
            ->with(['category']) // Removed 'employee' if it's causing the crash
            ->paginate(10);

        return $this->sendResponse($inventories, 'Inventory list');
    }

    public function all()
    {
        $inventories = $this->inventory->all();
        return $this->sendResponse($inventories, 'All inventory list');
    }

    public function inStorage()
    {
        $inventories = $this->inventory->where('status', 'Storage')
            ->latest()
            ->with(['category', 'employee'])
            ->paginate(5);

        return $this->sendResponse($inventories, 'In Storage List');
    }

    public function store(InventoryRequest $request)
    {
        $inventory = $this->inventory->create($request->all());
        return $this->sendResponse($inventory, 'Inventory created successfully');
    }

    public function show($id)
    {
        $inventory = $this->inventory->with(['category', 'employee'])->findOrFail($id);
        return $this->sendResponse($inventory, 'Inventory Details');
    }

    public function update(Request $request, $id)
    {
        $inventory = $this->inventory->findOrFail($id);
        $inventory->update($request->all());
        return $this->sendResponse($inventory, 'Inventory information has been updated');
    }

    public function destroy($id)
    {
        $this->authorize('isAdmin');
        $inventory = $this->inventory->findOrFail($id);
        $inventory->delete();
        return $this->sendResponse($inventory, 'Inventory has been deleted');
    }

    public function duplicate($id)
    {
        $record = Inventory::findOrFail($id);
        $duplicate = $record->replicate();

        $baseCode = explode(' copy', $record->idcode)[0];
        $count = Inventory::where('idcode', 'LIKE', $baseCode . ' copy%')->count();
        $nextNumber = $count + 1;

        $duplicate->idcode = $baseCode . " copy " . $nextNumber;
        $duplicate->serialnumber = null;
        $duplicate->save();

        return $this->sendResponse($duplicate, 'Inventory duplicated successfully');
    }

    public function counts()
    {
        $counts = [
            'deployed'  => $this->inventory->where('status', 'Deployed')->count(),
            'storage'   => $this->inventory->where('status', 'Storage')->count(),
            'inservice' => $this->inventory->where('status', 'In Service')->count(),
            'broken'    => $this->inventory->where('status', 'Broken')->count(),
            'laptop'    => $this->inventory->where('category_id', '1')->count(),
            'monitor'   => $this->inventory->where('category_id', '2')->count(),
            'server'    => $this->inventory->where('category_id', '3')->count(),
            'handphone' => $this->inventory->where('category_id', '4')->count(),
        ];

        return $this->sendResponse($counts, 'Dashboard list');
    }
}
