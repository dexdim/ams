<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Requests\Inventory\InventoryRequest;
use App\Http\Controllers\Controller;
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
        $inventories = $this->inventory->latest()->with('category')->paginate(50);

        return $this->sendResponse($inventories, 'Inventory list');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  App\Http\Requests\Inventory\InventoryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(InventoryRequest $request)
    {

        $inventory = $this->inventory->create([

            'idcode' => $request->get('idcode'),
            'category_id' => $request->get('category_id'),
            'description' => $request->get('description'),
            'brand' => $request->get('brand'),
            'serialnumber' => $request->get('serialnumber'),
            'supplier' => $request->get('supplier'),
            'purchasecost' => $request->get('purchasecost'),
            'purchasedate' => $request->get('purchasedate'),
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'status' => $request->get('status'),
            'history' => $request->get('history'),
            'notes' => $request->get('notes'),
            'checkdate' => $request->get('checkdate'),
            'checkedby' => $request->get('checkedby'),
        ]);

        return $this->sendResponse($inventory, 'Inventory created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $inventory = $this->inventory->with(['category'])->findOrFail($id);

        return $this->sendResponse($inventory, 'Inventory Details');
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
        $inventory = $this->inventory->findOrFail($id);

        $inventory->update($request->all());


        return $this->sendResponse($inventory, 'Inventory information has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $this->authorize('isAdmin');

        $inventory = $this->inventory->findOrFail($id);

        $inventory->delete();

        return $this->sendResponse($inventory, 'Inventory has been deleted');
    }

    public function search()
    {

        if ($search = \Request::get('q')) {
            $inventories = Inventory::where(function ($query) use ($search) {
                $query->where('idcode', 'LIKE', "%$search%")
                    ->orWhere('category', 'LIKE', "%$search%")
                    ->orWhere('description', 'LIKE', "%$search%")
                    ->orWhere('name', 'LIKE', "%$search%")
                    ->orWhere('email', 'LIKE', "%$search%")
                    ->orWhere('status', 'LIKE', "%$search%")
                    ->orWhere('history', 'LIKE', "%$search%");

            })->latest()->with('category')->paginate(100);
        }

        return $inventories;
    }
}
