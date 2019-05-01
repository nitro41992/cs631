<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;


class WelcomeController extends Controller
{
    public function index()
    {
      return view('welcome');
    }

}
