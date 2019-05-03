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
        ->leftjoin('copies', 'documents.document_id', '=', 'copies.document_id')
        ->select('documents.document_id', 'title', 'p_date', 'pub_name', DB::raw('count(copy_no) as copy_count'))
        ->groupBy('documents.document_id', 'title', 'p_date', 'pub_name')
        ->orderBy('documents.document_id', 'desc')
        ->get();

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
            ->leftjoin('copies', 'documents.document_id', '=', 'copies.document_id')
            ->select('documents.document_id', 'title', 'p_date', 'pub_name', DB::raw('count(copy_no) as copy_count'))
            ->groupBy('documents.document_id', 'title', 'p_date', 'pub_name')
            ->orderBy('documents.document_id', 'desc')
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
        ->leftjoin('copies', 'documents.document_id', '=', 'copies.document_id')
        ->where('documents.document_id','LIKE','%'.$request->get('doc_id_search').'%')
        ->select('documents.document_id', 'title', 'p_date', 'pub_name', DB::raw('count(copy_no) as copy_count'))
        ->groupBy('documents.document_id', 'title', 'p_date', 'pub_name')
        ->orderBy('documents.document_id', 'desc')
        ->get();
        

        $obj = array();
        if(count($documents) > 0){
            $obj['documents'] = $documents;

            return view('document', compact('obj', 'id'));
        
        }else{            
            return $this->index($request->id);
        } 
    }

    public function filterTitle($id, Request $request) {

        $documents = DB::table('documents')
        ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
        ->leftjoin('copies', 'documents.document_id', '=', 'copies.document_id')
        ->where('documents.title','LIKE','%'.$request->get('doc_title_search').'%')
        ->select('documents.document_id', 'title', 'p_date', 'pub_name', DB::raw('count(copy_no) as copy_count'))
        ->groupBy('documents.document_id', 'title', 'p_date', 'pub_name')
        ->orderBy('documents.document_id', 'desc')
        ->get();
        

        if(count($documents) > 0) {
            $obj['documents'] = $documents;
            return view('document', compact('obj', 'id'));
        }
        else{
            return $this->index($request->id);
        } 
    }

    public function filterPubName($id, Request $request) {

        $documents = DB::table('documents')
        ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
        ->leftjoin('copies', 'documents.document_id', '=', 'copies.document_id')
        ->where('publishers.pub_name','LIKE','%'.$request->get('pub_name_search').'%')
        ->select('documents.document_id', 'title', 'p_date', 'pub_name', DB::raw('count(copy_no) as copy_count'))
        ->groupBy('documents.document_id', 'title', 'p_date', 'pub_name')
        ->orderBy('documents.document_id', 'desc')
        ->get();
            

        if(count($documents) > 0){
            $obj['documents'] = $documents;
            return view('document', compact('obj', 'id'));
        }
        else{
            return $this->index($request->id);
        }
    }
}
