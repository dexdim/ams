<?php

namespace App\Exports;

use App\Models\Inventory;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;


class ExportController implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Inventory::all();
    }

    public function export(){

    return Excel::download(new Export, 'export.xlsx');
}
}
