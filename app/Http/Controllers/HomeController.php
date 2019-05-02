<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Document;
class HomeController extends Controller
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
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $documents = DB::table('documents')
        ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
        ->orderBy('document_id', 'desc')
        ->get();

        //$obj['card_num'] = $card_num;
        $obj['documents'] = $documents;

        return view('home')
        ->with(compact('obj'));
    }

    public function filterId(Request $request) {
        
        $documents = DB::table('documents')
        ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
        ->where('document_id','LIKE','%'.$request->get('doc_id_search').'%')
        ->get();

        $obj = array();
        if(count($documents) > 0){
            $obj['documents'] = $documents;

            return view('home', compact('obj'));
        
        }else{            
            return $this->index();
        } 
    }

    public function filterTitle(Request $request) {

        $documents = DB::table('documents')
        ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
        ->where('title','LIKE','%'.$request->get('doc_title_search').'%')
        ->get();

        if(count($documents) > 0) {
            $obj['documents'] = $documents;
            return view('home', compact('obj'));
        }
        else{
            return $this->index();
        } 
    }

    public function filterPubName(Request $request) {

        $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->where('pub_name','LIKE','%'.$request->get('pub_name_search').'%')
            ->get();

        if(count($documents) > 0){
            $obj['documents'] = $documents;
            return view('home', compact('obj'));
        }
        else{
            return $this->index();
        } 
    }

    public function insertDocument(Request $request) {
        $publisher_id = DB::table('publishers')
            ->insertGetId(['pub_name' => $request->pub_name,
                            'address' => $request->pub_loc,
                            ], 'publisher_id');

        $document_id = DB::table('documents')
        ->insertGetId(['title' => $request->title,
                        'p_date' => $request->pub_date,
                        'publisher_id' => $publisher_id,
                        ], 'document_id');



        return $this->index($request->id, $request->did);
    }

}
