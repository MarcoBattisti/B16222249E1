<?php

namespace App\Http\Controllers;

use App\PersonalStats;

class PersonalStatsController extends Controller
{
    public function getAll()
    {
        return PersonalStats::all();
    }
}
