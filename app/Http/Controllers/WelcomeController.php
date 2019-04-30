<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use \App\Reader;

class WelcomeController extends Controller
{

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

                $obj['card_num'] = $card_num;
                $obj['documents'] = $documents;


                return view('document', compact('obj'));


          } else {
            return redirect('/')->with('error', 'We couldn\'t find you.');
          }

    }
}
