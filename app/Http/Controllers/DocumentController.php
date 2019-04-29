<?php

namespace App\Http\Controllers;

use App\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        //$documents = DB::table('documents')->paginate(15);
        $documents = DB::table('documents')
                        ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
                        ->paginate(15);
    
        //dd($documents);
        return view('document', compact('documents'));

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
        //
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

    public function filterId(Request $request) {
        //dd($request->name);
        $documents = Document::where('document_id','LIKE','%'.$request->get('doc_id_search').'%')->paginate(15);
        if(count($documents) > 0)
            return view('document', compact('documents'));
        else{
            $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->paginate(15);
            
            return redirect('document')->with('error', 'We could not find any documents with the given id.');
        } 
    }

    public function filterTitle(Request $request) {
        //dd($request->name);
        $documents = Document::where('title','LIKE','%'.$request->get('doc_title_search').'%')->paginate(15);
        if(count($documents) > 0)
            return view('document', compact('documents'));
        else{
            $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->paginate(15);
            
            return redirect('document')->with('error', 'We could not find any documents with the given title.');
        } 
    }

    public function filterPubName(Request $request) {
        //dd($request->name);
        $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->where('pub_name','LIKE','%'.$request->get('pub_name_search').'%')
            ->paginate(15);
        if(count($documents) > 0)
            return view('document', compact('documents'));
        else{
            $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->paginate(15);
            
            return redirect('document')->with('error', 'We could not find any documents with the given publisher name.');
        } 
    }
}
