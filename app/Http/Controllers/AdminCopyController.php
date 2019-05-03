<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AdminCopyController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($did)
    {
        $copies = DB::table('copies')
        ->rightJoin('documents', 'documents.document_id', '=', 'copies.document_id')
        ->rightJoin('branches', 'branches.lib_id', '=', 'copies.lib_id')
        ->leftJoin("borrows",function($join){
            $join->on("copies.document_id","=","borrows.document_id")
                ->on("copies.copy_no","=","borrows.copy_no")
                ->on("copies.lib_id","=","borrows.lib_id")
                ->whereNull('borrows.rd_time');
        })
        ->leftJoin("reserves",function($join){
            $join->on("copies.document_id","=","reserves.document_id")
                ->on("copies.copy_no","=","reserves.copy_no")
                ->on("copies.lib_id","=","reserves.lib_id");
        })
        ->select('copies.copy_no',
                 'copies.position',
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

        // $max_of_copy = DB::table('copies')
        // ->rightJoin('documents', 'documents.document_id', '=', 'copies.document_id')
        // ->select(DB::raw('max(copy_no)'))
        // ->groupBy('copies.document_id')
        // ->where('copies.document_id', '=', $did)
        // ->first();

        $branches = DB::table('branches')
        ->get();


        $obj = array();
        $obj['copies'] = $copies;
        //$obj['max_copy']  = $max_of_copy;
        $obj['branches']  = $branches;
        $obj['did'] = $did;

        return view('adminCopy', compact('obj'));
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function return(Request $request) {
        $time = Carbon::now()->setTimezone('EST');
        DB::table('borrows')
        ->where('document_id', '=', $request->did)
        ->where('copy_no', '=', $request->coid)
        ->where('lib_id', '=', $request->lid)
        ->update(['rd_time' => $time]);
        return $this->index($request->did);
    }

    public function cancelReservation(Request $request) {
        DB::table('reserves')
        ->where('document_id', '=', $request->did)
        ->where('copy_no', '=', $request->coid)
        ->where('lib_id', '=', $request->lid)
        ->delete();
        return $this->index($request->did);
    }

    public function insertCopy(Request $request) {
        
        $request->validate([

            'copy_no'=> 'required',
            'br_name'=> 'required',
            'br_pos'=> 'required',

        ]);
        //dd($request);
        $br_names = explode(' ', $request->br_name, 2);
        $branches = DB::table('branches')
        ->where('lib_id','=', $br_names[0])
        ->first();

        $copy_id = DB::table('copies')
            ->insertGetId(['document_id' => $request->document_id,
                        'copy_no' => $request->copy_no,
                        'lib_id' => $branches->lib_id,
                        'position' => $request->br_pos,
                        ], 'document_id');

        return $this->index($request->document_id);
    }

    public function delete(Request $request) {
        
        DB::table('borrows')
        ->where('document_id', '=', $request->did)
        ->where('copy_no', '=', $request->coid)
        ->where('lib_id', '=', $request->lid)
        ->delete();
        
        
        DB::table('copies')
        ->where('document_id', '=', $request->did)
        ->where('copy_no', '=', $request->coid)
        ->where('lib_id', '=', $request->lid)
        ->delete();
        return $this->index($request->did);
    }
}
