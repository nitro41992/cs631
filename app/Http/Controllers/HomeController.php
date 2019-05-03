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
            ->leftjoin('copies', 'documents.document_id', '=', 'copies.document_id')
            ->select('documents.document_id', 'title', 'p_date', 'pub_name', DB::raw('count(copy_no) as copy_count'))
            ->groupBy('documents.document_id', 'title', 'p_date', 'pub_name')
            ->orderBy('documents.document_id', 'desc')
            ->get();


        $publishers = DB::table('publishers')
            ->orderBy('publisher_id', 'asc')
            ->get();

        $docCopies = DB::table('copies')
            ->join('documents', 'documents.document_id', '=', 'copies.document_id')
            ->select('copies.document_id', DB::raw('count(copy_no) as copy_count'))
            ->groupBy('copies.document_id')
            ->get();

        $obj['documents'] = $documents;
        $obj['publishers'] = $publishers;


        return view('home')
            ->with(compact('obj'));
    }

    public function filterId(Request $request)
    {


        $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->leftjoin('copies', 'documents.document_id', '=', 'copies.document_id')
            ->where('documents.document_id', 'LIKE', '%' . $request->get('doc_id_search') . '%')
            ->select('documents.document_id', 'title', 'p_date', 'pub_name', DB::raw('count(copy_no) as copy_count'))
            ->groupBy('documents.document_id', 'title', 'p_date', 'pub_name')
            ->orderBy('documents.document_id', 'desc')
            ->get();

        $publishers = DB::table('publishers')
            ->orderBy('publisher_id', 'asc')
            ->get();

        $obj = array();
        if (count($documents) > 0) {
            $obj['documents'] = $documents;
            $obj['publishers'] = $publishers;

            return view('home', compact('obj'));
        } else {
            return $this->index();
        }
    }

    public function filterTitle(Request $request)
    {


        $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->leftjoin('copies', 'documents.document_id', '=', 'copies.document_id')
            ->where('documents.title', 'LIKE', '%' . $request->get('doc_title_search') . '%')
            ->select('documents.document_id', 'title', 'p_date', 'pub_name', DB::raw('count(copy_no) as copy_count'))
            ->groupBy('documents.document_id', 'title', 'p_date', 'pub_name')
            ->orderBy('documents.document_id', 'desc')
            ->get();

        $publishers = DB::table('publishers')
            ->orderBy('publisher_id', 'asc')
            ->get();

        if (count($documents) > 0) {
            $obj['documents'] = $documents;
            $obj['publishers'] = $publishers;

            return view('home', compact('obj'));
        } else {
            return $this->index();
        }
    }

    public function filterPubName(Request $request)
    {


        $documents = DB::table('documents')
            ->join('publishers', 'documents.publisher_id', '=', 'publishers.publisher_id')
            ->leftjoin('copies', 'documents.document_id', '=', 'copies.document_id')
            ->where('publishers.pub_name', 'LIKE', '%' . $request->get('pub_name_search') . '%')
            ->select('documents.document_id', 'title', 'p_date', 'pub_name', DB::raw('count(copy_no) as copy_count'))
            ->groupBy('documents.document_id', 'title', 'p_date', 'pub_name')
            ->orderBy('documents.document_id', 'desc')
            ->get();

        $publishers = DB::table('publishers')
            ->orderBy('publisher_id', 'asc')
            ->get();

        if (count($documents) > 0) {
            $obj['documents'] = $documents;
            $obj['publishers'] = $publishers;

            return view('home', compact('obj'));
        } else {
            return $this->index();
        }
    }

    public function insertBook(Request $request)
    {

        $pub_values = explode(' ', $request->pub_name, 2);

        $publishers = DB::table('publishers')
            ->where('publisher_id', '=', $pub_values[0])
            ->first();

        $publisher_id = DB::table('publishers')
            ->insertGetId([
                'pub_name' => $publishers->pub_name,
                'address' => $publishers->address,
            ], 'publisher_id');

        $author_id = DB::table('authors')
            ->insertGetId([
                'a_name' => $request->a_name,
            ], 'author_id');


        $document_id = DB::table('documents')
            ->insertGetId([
                'title' => $request->title,
                'p_date' => $request->pub_date,
                'publisher_id' => $publisher_id,
            ], 'document_id');


        $book_id = DB::table('books')
            ->insertGetId([
                'isbn' => $request->isbn,
                'document_id' => $document_id
            ], 'id');

        DB::table('writes')
            ->insert([
                'author_id' => $author_id,
                'document_id' => $document_id,
            ]);


        return $this->index();
    }

    public function insertJournalVolume(Request $request)
    {

        $pub_values = explode(' ', $request->pub_name, 2);

        $publishers = DB::table('publishers')
            ->where('publisher_id', '=', $pub_values[0])
            ->first();

        $publisher_id = DB::table('publishers')
            ->insertGetId([
                'pub_name' => $publishers->pub_name,
                'address' => $publishers->address,
            ], 'publisher_id');

        $document_id = DB::table('documents')
            ->insertGetId([
                'title' => $request->title,
                'p_date' => $request->pub_date,
                'publisher_id' => $publisher_id,
            ], 'document_id');

        $editor_id = DB::table('chief_editors')
            ->insertGetId([
                'e_name' => $request->e_name,
            ], 'editor_id');

        $jv_id = DB::table('journal_volumes')
            ->insertGetId([
                'document_id' => $document_id,
                'j_volume' => $request->j_volume,
                'editor_id' => $editor_id,
            ], 'id');

        DB::table('journal_issues')
            ->insert([
                'document_id' => $document_id,
                'issue_no' => $request->issue_no,
                'scope' => $request->scope,
            ]);

        return $this->index();
    }

    public function insertProceeding(Request $request)
    {

        $pub_values = explode(' ', $request->pub_name, 2);

        $publishers = DB::table('publishers')
            ->where('publisher_id', '=', $pub_values[0])
            ->first();

        $publisher_id = DB::table('publishers')
            ->insertGetId([
                'pub_name' => $publishers->pub_name,
                'address' => $publishers->address,
            ], 'publisher_id');

        $document_id = DB::table('documents')
            ->insertGetId([
                'title' => $request->title,
                'p_date' => $request->pub_date,
                'publisher_id' => $publisher_id,
            ], 'document_id');

        DB::table('proceedings')
            ->insert([
                'document_id' => $document_id,
                'c_date' => $request->c_date,
                'c_location' => $request->c_location,
                'c_editor' => $request->c_editor,
            ]);

        return $this->index();
    }

    public function deleteDocument($did)
    {

        $copies = DB::table('copies')
            ->where('document_id', '=', $did)
            ->get();

        if ($copies->count() == 0) {
            DB::table('documents')
                ->where('document_id', '=', $did)
                ->delete();
        }

        return $this->index();
    }
}
