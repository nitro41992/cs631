<?php

namespace App\Http\Controllers;

use App\Branch;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BranchController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $branches = DB::table('branches')
        ->get();

        $freqBorrowers = DB::table('borrows')
        ->join('readers', 'readers.reader_id', '=', 'borrows.reader_id')
        ->join('books', 'books.document_id', '=', 'borrows.document_id')
        ->select('readers.reader_id','readers.r_name',  DB::raw('count(*) as count'))
        ->groupBy('readers.reader_id','readers.r_name')
        ->orderBy('count','desc')
        ->take(10)
        ->get();

        $mostBorrowed = DB::table('copies')
            ->join("borrows",function($join){
                $join->on("copies.document_id","=","borrows.document_id")
                    ->on("copies.copy_no","=","borrows.copy_no")
                    ->on("copies.lib_id","=","borrows.lib_id");
            })
            ->join('documents', 'documents.document_id', '=', 'copies.document_id')
            ->join('books', 'books.document_id', '=', 'copies.document_id')
            ->select('books.isbn','documents.title', DB::raw('count(copies.copy_no)'))
            ->groupBy('books.isbn','documents.title')
            ->orderBy('count','desc')
            ->take(10)
            ->get();
        //dd($mostBorrowed);        

        $obj['branches'] = $branches;
        $obj['freqBorrowers'] = $freqBorrowers;
        $obj['mostBorrowed'] = $mostBorrowed;

        return view('branch')
        ->with(compact('obj'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Branch  $branch
     * @return \Illuminate\Http\Response
     */
    public function show(Branch $branch)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Branch  $branch
     * @return \Illuminate\Http\Response
     */
    public function edit(Branch $branch)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Branch  $branch
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Branch $branch)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Branch  $branch
     * @return \Illuminate\Http\Response
     */
    public function destroy(Branch $branch)
    {
        //
    }
}
