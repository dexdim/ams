<?php

namespace App\Http\Controllers\API;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends BaseController
{
    /**
     * @var Category
     */
    protected $category;

    /**
     * Create a new controller instance.
     * @param Category $category
     */
    public function __construct(Category $category)
    {
        $this->middleware('auth:api');
        $this->category = $category;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = $this->category->latest()->paginate(10);
        return $this->sendResponse($categories, 'Category list');
    }

    /**
     * Display a listing for dropdowns.
     */
    public function list()
    {
        // Pluck is good for simple IDs/Names, 
        // but often 'all()' is better if your Vue select needs full objects.
        $categories = $this->category->all();
        return $this->sendResponse($categories, 'Category list');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string|max:191|unique:categories',
        ]);

        $category = $this->category->create($request->all());
        return $this->sendResponse($category, 'Category Created Successfully');
    }

    /**
     * Update the resource in storage.
     */
    public function update(Request $request, $id)
    {
        $category = $this->category->findOrFail($id);

        $this->validate($request, [
            'name' => 'required|string|max:191|unique:categories,name,' . $category->id,
        ]);

        $category->update($request->all());
        return $this->sendResponse($category, 'Category Information has been updated');
    }

    /**
     * Remove the specified category.
     */
    public function destroy($id)
    {
        $this->authorize('isAdmin');
        $category = $this->category->findOrFail($id);
        $category->delete();

        return $this->sendResponse($category, 'Category has been deleted');
    }
}
