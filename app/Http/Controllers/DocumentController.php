<?php

namespace App\Http\Controllers;

use App\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use \App\Reader;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $documents = DB::table('documents')
        ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
        ->get();

        //$obj['card_num'] = $card_num;
        $obj['documents'] = $documents;
        $id = $id;
        return view('document')
        ->with(compact('obj','id'));

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
     * @param  \App\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function show(Document $document)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function edit(Document $document)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Document $document)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function destroy(Document $document)
    {
        //
    }

    public function getReaderByCardNumber(Request $request){      
        $request->validate([

            'card_num'=> 'required|integer'

          ]);
          $card_num = new Reader([

            'card_num'=> $request->get('card_num')

          ]);
          
          $obj = array();

          $reader = Reader::where('card_num', $card_num['card_num'])->first();

          if ( $reader != null) {
                $documents = DB::table('documents')
                ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
                ->get();

                //$obj['card_num'] = $card_num;
                $obj['documents'] = $documents;
                $id = $reader->card_num;
                return view('document', compact('obj','id'));


          } else {
            return redirect('/')->with('error', 'We couldn\'t find you.');
          }

    }

    public function filterId($id, Request $request) {
        
        $documents = DB::table('documents')
        ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
        ->where('document_id','LIKE','%'.$request->get('doc_id_search').'%')
        ->get();

        $obj = array();
        if(count($documents) > 0){
            $obj['documents'] = $documents;

            return view('document', compact('obj', 'id'));
        
        }else{            
            $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->get();


            $obj['documents'] = $documents;
            $id = $id;
            return view('document')
            ->with(compact('obj','id'));
        } 
    }

    public function filterTitle($id, Request $request) {

        $documents = DB::table('documents')
        ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
        ->where('title','LIKE','%'.$request->get('doc_title_search').'%')
        ->get();

        if(count($documents) > 0) {
            $obj['documents'] = $documents;
            return view('document', compact('obj', 'id'));
        }
        else{
            $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->get();


            $obj['documents'] = $documents;
            $id = $id;
            return view('document')
            ->with(compact('obj','id'));
        } 
    }

    public function filterPubName($id, Request $request) {

        $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->where('pub_name','LIKE','%'.$request->get('pub_name_search').'%')
            ->get();

        if(count($documents) > 0){
            $obj['documents'] = $documents;
            return view('document', compact('obj', 'id'));
        }
        else{
            $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->get();

            $obj['documents'] = $documents;
            $id = $id;
            return view('document')
            ->with(compact('obj','id'));
        } 
    }
}
