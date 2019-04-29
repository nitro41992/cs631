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
          
          $selReader = Reader::where('card_num', $card_num['card_num'])->first();
          if ( $selReader != null) {
            return redirect('/document')->with('success', 'You\'re in!');
          } else {
            return redirect('/')->with('error', 'We couldn\'t find you.');
          }

    }
}
