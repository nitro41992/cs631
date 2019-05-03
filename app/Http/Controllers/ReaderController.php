<?php

namespace App\Http\Controllers;

use App\Reader;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReaderController extends Controller
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
        $readers = DB::table('readers')
        ->orderBy('reader_id', 'desc')
        ->get();
        
        // $types = DB::table('readers')
        // ->select('r_type')
        // ->distinct()
        // ->orderBy('r_type', 'asc')
        // ->get();

        $obj['readers'] = $readers;
        // $obj['types'] = $types;
        
        return view('reader')
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
     * @param  \App\Reader  $reader
     * @return \Illuminate\Http\Response
     */
    public function show(Reader $reader)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Reader  $reader
     * @return \Illuminate\Http\Response
     */
    public function edit(Reader $reader)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Reader  $reader
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Reader $reader)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Reader  $reader
     * @return \Illuminate\Http\Response
     */
    public function destroy(Reader $reader)
    {
        //
    }

    public function filterName(Request $request) {

        $readers = DB::table('readers')
        ->where('r_name','LIKE','%'.$request->get('r_name').'%')
        ->get();

        if(count($readers) > 0) {
            $obj['readers'] = $readers;
            return view('reader', compact('obj'));
        }
        else{
            return $this->index();
        } 
    }

    public function filterCardNum(Request $request) {

        $readers = DB::table('readers')
        ->where('card_num','LIKE','%'.$request->get('card_num').'%')
        ->get();

        if(count($readers) > 0){
            $obj['readers'] = $readers;
            return view('reader', compact('obj'));
        }
        else{
            return $this->index();
        } 
    }

    public function insertReader(Request $request) {
        
        $request->validate([

            'r_type'=> 'required',
            'r_name'=> 'required',
            'address'=> 'required',
            'card_num'=> 'required',

        ]);

        //dd($request);
        $reader_id = DB::table('readers')
            ->insertGetId(['r_type' => $request->r_type,
                        'r_name' => $request->r_name,
                        'address' => $request->address,
                        'card_num' => $request->card_num,
                        ], 'reader_id');

        return $this->index();
    }



}
