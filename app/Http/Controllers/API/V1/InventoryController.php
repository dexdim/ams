<?php

namespace App\Http\Controllers\API\V1;


use App\Http\Requests\Inventory\InventoryRequest;
use App\Models\Inventory;
use Illuminate\Http\Request;

class InventoryController extends BaseController
{
    protected $inventory = '';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(Inventory $inventory)
    {
        $this->middleware('auth:api');
        $this->inventory = $inventory;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$query = Inventory::query();
        //if ($request->has('search')) {
        //    $search = $request->input('search');
        //    $query->where('idcode', 'LIKE', "%$search%")
        //        ->orWhere('category', 'LIKE', "%$search%")
        //        ->orWhere('description', 'LIKE', "%$search%")
        //        ->orWhere('serialnumber', 'LIKE', "%$search%")
        //        ->orWhere('license', 'LIKE', "%$search%")
        //        ->orWhere('name', 'LIKE', "%$search%")
        //        ->orWhere('email', 'LIKE', "%$search%")
        //        ->orWhere('status', 'LIKE', "%$search%")
        //        ->orWhere('history', 'LIKE', "%$search%");
        //}
        //$inventories = $query->latest()->with('category')->paginate(25);
        ////return response()->json($inventories);
        //return $this->sendResponse($inventories, 'Inventory list');
        return view('inventory.index');
    }

    public function search(Request $request)
    {
        //if ($search = \Request::get('q')) {
        //    $inventories = Inventory::where(function ($query) use ($search) {
        //        $query->where('idcode', 'LIKE', "%$search%")
        //            ->orWhere('category', 'LIKE', "%$search%")
        //            ->orWhere('description', 'LIKE', "%$search%")
        //            ->orWhere('serialnumber', 'LIKE', "%$search%")
        //            ->orWhere('license', 'LIKE', "%$search%")
        //            ->orWhere('name', 'LIKE', "%$search%")
        //            ->orWhere('email', 'LIKE', "%$search%")
        //            ->orWhere('status', 'LIKE', "%$search%")
        //            ->orWhere('history', 'LIKE', "%$search%");
        //    })->latest()->with('category', 'employee')->paginate(25);
        //}
        //return $inventories;
        $search = $request->input('search');
        $inventories = Inventory::where(function ($query) use ($search) {
            $query->where('idcode', 'LIKE', "%$search%")
                ->orWhere('category', 'LIKE', "%$search%")
                ->orWhere('description', 'LIKE', "%$search%")
                ->orWhere('serialnumber', 'LIKE', "%$search%")
                ->orWhere('license', 'LIKE', "%$search%")
                ->orWhere('name', 'LIKE', "%$search%")
                ->orWhere('email', 'LIKE', "%$search%")
                ->orWhere('status', 'LIKE', "%$search%")
                ->orWhere('history', 'LIKE', "%$search%");
        })->latest()->with('category', 'employee')->paginate(10);
        return $this->sendResponse($inventories, 'Inventory list');
    }

    public function all()
    {
        $inventories = $this->inventory->all();
        return $this->sendResponse($inventories, 'All inventory list');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  App\Http\Requests\Inventory\InventoryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(InventoryRequest $request)
    {

        $inventories = $this->inventory->create([
            'idcode' => $request->get('idcode'),
            'category_id' => $request->get('category_id'),
            'description' => $request->get('description'),
            'brand' => $request->get('brand'),
            'serialnumber' => $request->get('serialnumber'),
            'supplier' => $request->get('supplier'),
            'purchasecost' => $request->get('purchasecost'),
            'purchasedate' => $request->get('purchasedate'),
            'license' => $request->get('license'),
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'status' => $request->get('status'),
            'history' => $request->get('history'),
            'notes' => $request->get('notes'),
            'checkdate' => $request->get('checkdate'),
            'checkedby' => $request->get('checkedby'),
        ]);

        return $this->sendResponse($inventories, 'Inventory created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $inventories = $this->inventory->with('category', 'employee')->findOrFail($id);
        return $this->sendResponse($inventories, 'Inventory Details');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Inventory  $inventory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $inventories = $this->inventory->findOrFail($id);
        $inventories->update($request->all());
        return $this->sendResponse($inventories, 'Inventory information has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $this->authorize('isAdmin');
        $inventories = $this->inventory->findOrFail($id);
        $inventories->delete();
        return $this->sendResponse($inventories, 'Inventory has been deleted');
    }



    public function duplicate($id)
    {
        $record = Inventory::find($id);
        $duplicate = $record->replicate();
        $duplicate->push();
    }
}
