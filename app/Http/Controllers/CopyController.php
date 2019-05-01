<?php

namespace App\Http\Controllers;

use App\Copy;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CopyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($cid, $did)
    {
        
        $copies = DB::table('copies')
        ->Join('documents', 'copies.document_id', '=', 'documents.document_id')
        ->Join('branches', 'branches.lib_id', '=', 'copies.lib_id')
        ->leftJoin("borrows",function($join){
            $join->on("borrows.document_id","=","copies.document_id")
                ->on("borrows.copy_no","=","copies.copy_no")
                ->on("borrows.lib_id","=","copies.lib_id");
        })
        ->leftJoin("reserves",function($join){
            $join->on("reserves.document_id","=","copies.document_id")
                ->on("reserves.copy_no","=","copies.copy_no")
                ->on("reserves.lib_id","=","copies.lib_id");
        })
        ->select('copies.copy_no',
                 'copies.document_id',
                 'documents.title',
                 'copies.copy_no', 
                 'branches.l_name',
                 'branches.l_location',
                 'borrows.bor_number',
                 'borrows.reader_id as bor_reader_id',
                 'reserves.res_number',
                 'reserves.reader_id as res_reader_id')
        ->where('copies.document_id', '=', $did)
        ->get();

        //dd($copies);

        $obj = array();
        $obj['copies'] = $copies;

        return view('copy', compact('obj', 'cid'));
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
     * @param  \App\Copy  $copy
     * @return \Illuminate\Http\Response
     */
    public function show(Copy $copy)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Copy  $copy
     * @return \Illuminate\Http\Response
     */
    public function edit(Copy $copy)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Copy  $copy
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Copy $copy)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Copy  $copy
     * @return \Illuminate\Http\Response
     */
    public function destroy(Copy $copy)
    {
        //
    }
}
