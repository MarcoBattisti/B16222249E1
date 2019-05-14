<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\IntroductionInformations;

class IntroductionInformationsController extends Controller
{
    public function getAll()
    {
        return IntroductionInformations::all();
    }

    public function update(int $id, Request $request) {
        $introduction = IntroductionInformations::find($id);
        $introduction->name = $request->name;
        $introduction->value = $request->value;
        $introduction->icon = $request->icon;

        $introduction->save();

        return response()->json(['id' => $id]);
    }
}
