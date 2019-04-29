<?php

namespace App\Http\Controllers;

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

          return redirect('/document')->with('success', 'Stock has been added');
    }
}
