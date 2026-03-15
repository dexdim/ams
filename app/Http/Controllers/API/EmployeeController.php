<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\Inventory\EmployeeRequest;
use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends BaseController
{
    /**
     * @var Employee
     */
    protected $employee;

    /**
     * Create a new controller instance.
     * @param Employee $employee
     */
    public function __construct(Employee $employee)
    {
        $this->middleware('auth:api');
        $this->employee = $employee;
    }

    /**
     * Display a listing of the resource with pagination.
     */
    public function index()
    {
        $employees = $this->employee->latest()->paginate(10);
        return $this->sendResponse($employees, 'Employee list');
    }

    /**
     * Get all employees for dropdowns/select lists.
     */
    public function list()
    {
        $employees = $this->employee->all();
        return $this->sendResponse($employees, 'Employee list');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(EmployeeRequest $request)
    {
        $employee = $this->employee->create($request->all());
        return $this->sendResponse($employee, 'Employee created successfully');
    }

    /**
     * Update the resource in storage.
     */
    public function update(Request $request, $id)
    {
        $employee = $this->employee->findOrFail($id);
        $employee->update($request->all());

        return $this->sendResponse($employee, 'Employee information has been updated');
    }

    /**
     * Remove the specified employee.
     */
    public function destroy($id)
    {
        $this->authorize('isAdmin');
        $employee = $this->employee->findOrFail($id);
        $employee->delete();

        return $this->sendResponse($employee, 'Employee has been deleted');
    }
}
