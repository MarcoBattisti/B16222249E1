<?php

namespace App\Http\Controllers;

use App\IntroductionInformations;

class IntroductionInformationsController extends Controller
{
    public function getAll()
    {
        return IntroductionInformations::all();
    }
}
