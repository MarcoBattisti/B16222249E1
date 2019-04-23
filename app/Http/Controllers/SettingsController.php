<?php

namespace App\Http\Controllers;

use App\Settings;
use Illuminate\Http\Request;
use Symfony\Component\Routing\Exception\MissingMandatoryParametersException;

class SettingsController extends Controller
{
    public function getSettingsBySection(Request $request)
    {
        if ($request->has('section')) {
            $section = $request->input('section');
            return Settings::where('section', $section)->get();
        } else {
            throw new MissingMandatoryParametersException('section parameter missing!');
        }
    }

    public function update(int $id, Request $request) {
        $setting = Settings::find($id);

        $setting->value = $request->value;

        $setting->save();

        return response()->json(['id' => $id]);
    }
}
