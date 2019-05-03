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
            ->select('readers.reader_id', 'readers.r_name',  DB::raw('count(*) as count'))
            ->groupBy('readers.reader_id', 'readers.r_name')
            ->orderBy('count', 'desc')
            ->take(10)
            ->get();

        $mostBorrowed = DB::table('copies')
            ->join("borrows", function ($join) {
                $join->on("copies.document_id", "=", "borrows.document_id")
                    ->on("copies.copy_no", "=", "borrows.copy_no")
                    ->on("copies.lib_id", "=", "borrows.lib_id");
            })
            ->join('documents', 'documents.document_id', '=', 'copies.document_id')
            ->join('books', 'books.document_id', '=', 'copies.document_id')
            ->join('branches', 'copies.lib_id', '=', 'branches.lib_id')
            ->select('books.isbn', 'documents.title', 'books.document_id', 'branches.l_name', DB::raw('count(copies.copy_no)'))
            ->groupBy('books.isbn', 'documents.title', 'books.document_id', 'branches.l_name', 'branches.lib_id')
            ->orderBy('count', 'desc')
            ->take(10)
            ->get();

        $mostBorrowedThisYear = DB::table('copies')
            ->join("borrows", function ($join) {
                $join->on("copies.document_id", "=", "borrows.document_id")
                    ->on("copies.copy_no", "=", "borrows.copy_no")
                    ->on("copies.lib_id", "=", "borrows.lib_id")
                    ->where(DB::raw('date_part(\'year\', borrows.bd_time)'), '=', DB::raw('date_part(\'year\', NOW()::date)'));
            })
            ->join('documents', 'documents.document_id', '=', 'copies.document_id')
            ->join('books', 'books.document_id', '=', 'copies.document_id')
            ->select('books.isbn', 'documents.title', 'books.document_id', DB::raw('count(copies.copy_no)'))
            ->groupBy('books.isbn', 'documents.title', 'books.document_id')
            ->orderBy('count', 'desc')
            ->take(10)
            ->get();

        $avgFineByUser = DB::table('copies')
            ->Join('documents', 'documents.document_id', '=', 'copies.document_id')
            ->Join("borrows", function ($join) {
                $join->on("copies.document_id", "=", "borrows.document_id")
                    ->on("copies.copy_no", "=", "borrows.copy_no")
                    ->on("copies.lib_id", "=", "borrows.lib_id")
                    ->whereNull('borrows.rd_time');
            })
            ->Join('readers', 'readers.reader_id', '=', 'borrows.reader_id')
            ->select(
                'readers.r_name',
                'readers.card_num',
                'borrows.reader_id',
                DB::raw('round(avg(extract(days from (borrows.bd_time::date + interval \'20\' day - NOW()::date)*(-0.20))::int), 2) as fee'),
            )
            ->groupBy(
                'readers.r_name',
                'readers.card_num',
                'borrows.reader_id',
            )
            ->whereNotNull(DB::raw('(borrows.bd_time::date + interval \'20\' day - NOW()::date)'))
            ->orderBy('readers.r_name')
            ->get();

        $totAvgFee = DB::table('borrows')
            ->select(
                DB::raw('round(avg(extract(days from (borrows.bd_time::date + interval \'20\' day - NOW()::date)*(-0.20))::int), 2) as fee'),
            )
            ->whereNotNull(DB::raw('(borrows.bd_time::date + interval \'20\' day - NOW()::date)'))
            ->get();


        $obj['branches'] = $branches;
        $obj['freqBorrowers'] = $freqBorrowers;
        $obj['mostBorrowed'] = $mostBorrowed;
        $obj['mostBorrowedThisYear'] = $mostBorrowedThisYear;
        $obj['avgFineByUser'] = $avgFineByUser;
        $obj['totAvgFee'] = $totAvgFee;

        //dd($obj['totAvgFee'][0]->fee);

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
