<?php

namespace App\Http\Controllers;

use App\PersonalStats;
use Illuminate\Http\Request;

class PersonalStatsController extends Controller
{
    public function getAll()
    {
        return PersonalStats::all();
    }

    public function update(Request $request){
        $stats = $request->all();
        foreach($stats as $data)
         {
             $stat = PersonalStats::find($data['id']);
             $stat->name = $data['name'];
             $stat->value = $data['value'];

             $stat->save();
         }

        return response()->json('Successfully added');
    }
}
