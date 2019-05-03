<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ReaderProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $reader = DB::table('readers')
            ->where('readers.card_num', "=", $id)
            ->select('reader_id')
            ->first();

        $copies = DB::table('copies')
            ->rightJoin('documents', 'documents.document_id', '=', 'copies.document_id')
            ->rightJoin('branches', 'branches.lib_id', '=', 'copies.lib_id')
            ->leftJoin("borrows", function ($join) {
                $join->on("copies.document_id", "=", "borrows.document_id")
                    ->on("copies.copy_no", "=", "borrows.copy_no")
                    ->on("copies.lib_id", "=", "borrows.lib_id");
            })
            ->leftJoin("reserves", function ($join) {
                $join->on("copies.document_id", "=", "reserves.document_id")
                    ->on("copies.copy_no", "=", "reserves.copy_no")
                    ->on("copies.lib_id", "=", "reserves.lib_id");
            })
            ->select(
                'copies.copy_no',
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
                DB::raw('(borrows.bd_time::date + interval \'20\' day - NOW()::date) as borrow_time_left'),
            )
            ->where('reserves.reader_id', '=', $reader->reader_id)
            ->orWhere('borrows.reader_id', '=', $reader->reader_id)
            ->whereNull('borrows.rd_time')
            ->get();

        //dd($copies);
        $obj = array();
        $obj['copies'] = $copies;

        $totDays = null;
        foreach ($copies as $copy) {
            if ($copy->borrow_time_left < 0)
                $totDays = (int)$copy->borrow_time_left + (int)$totDays;
        }

        $fee = number_format((float)(abs($totDays * 0.20)), 2, '.', '');

        return view('readerProfile', compact('obj', 'reader', 'id', 'fee'));
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
}
