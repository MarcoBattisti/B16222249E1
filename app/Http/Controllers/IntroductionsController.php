<?php

namespace App\Http\Controllers;

use App\Introductions;
use Illuminate\Http\Request;

class IntroductionsController extends Controller
{
    public function index(){
        $latestIntroductionById = Introductions::max('id');
        return Introductions::find($latestIntroductionById);
    }
}
