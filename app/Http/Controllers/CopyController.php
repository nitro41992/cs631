<?php

namespace App\Http\Controllers;

use App\Copy;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

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
        ->rightJoin('documents', 'documents.document_id', '=', 'copies.document_id')
        ->rightJoin('branches', 'branches.lib_id', '=', 'copies.lib_id')
        ->leftJoin("borrows",function($join){
            $join->on("copies.document_id","=","borrows.document_id")
                ->on("copies.copy_no","=","borrows.copy_no")
                ->on("copies.lib_id","=","borrows.lib_id");
        })
        ->leftJoin("reserves",function($join){
            $join->on("copies.document_id","=","reserves.document_id")
                ->on("copies.copy_no","=","reserves.copy_no")
                ->on("copies.lib_id","=","reserves.lib_id");
        })
        ->select('copies.copy_no',
                 'documents.document_id',
                 'documents.title', 
                 'branches.l_name',
                 'branches.l_location',
                 'branches.lib_id',
                 'borrows.bor_number',
                 'borrows.reader_id as bor_reader_id',
                 'borrows.bd_time',
                 'borrows.rd_time',
                 'reserves.res_number',
                 'reserves.reader_id as res_reader_id',
                 'reserves.d_time',
                 DB::raw('(NOW()::date - borrows.rd_time::date) as borrow_time_left'))
        ->where('copies.document_id', '=', $did)
        ->get();

        $reader = DB::table('readers')
                    ->where('readers.card_num', "=", $cid)
                    ->select('reader_id')
                    ->first();

        $obj = array();
        $obj['copies'] = $copies;

        return view('copy', compact('obj', 'cid', 'reader'));
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

    public function reserve() {

    }

    public function checkout(Request $request) {
        //dd($request->rid);
        $time = Carbon::now();
        $id = DB::table('borrows')
            ->insertGetId(['reader_id' => $request->rid,
                            'document_id' => $request->did,
                            'copy_no' => $request->coid,
                            'lib_id' => $request->lid,
                            'bd_time' => $time,
                            'rd_time' => Carbon::createFromFormat('Y-m-d H:i:s', $time)->addDays(20)
                            ], 'bor_number');
        $cid = $request->cid;
        $did = $request->did;
        return $this->index($cid, $did);
    }

    public function return() {

    }

    public function cancelReservation() {

    }

}
