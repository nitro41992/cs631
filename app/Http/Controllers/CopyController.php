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
        ->join('documents', 'copies.document_id', '=', 'documents.document_id')
        ->join('branches', 'branches.lib_id', '=', 'copies.lib_id')
        ->where('copies.document_id', '=', $did)
        ->get();

        $copy_status;
        $borrowed =  DB::table('copies')
        ->join("borrows",function($join){
            $join->on("borrows.document_id","=","copies.document_id")
                ->on("borrows.copy_no","=","copies.copy_no")
                ->on("borrows.lib_id","=","copies.lib_id");
        })
        ->where('copies.document_id', '=', $did)
        ->get();

        $reserved =  DB::table('copies')
        ->join("reserves",function($join){
            $join->on("reserves.document_id","=","copies.document_id")
                ->on("reserves.copy_no","=","copies.copy_no")
                ->on("reserves.lib_id","=","copies.lib_id");
        })
        ->where('copies.document_id', '=', $did)
        ->get();
        
        //dd($borrowed);

        if ($borrowed->count() > 0) {
            $copy_status = 'borrowed';
        } elseif ($reserved->count() > 0) {
            $copy_status = 'reserved';
        }

        $obj = array();
        $obj['card_num'] = $cid;
        $obj['copies'] = $copies;
        $obj['copy_status'] = $copy_status;

        //dd($obj);

        return view('copy', compact('obj'));
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
