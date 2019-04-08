<?php

namespace App\Http\Controllers;

use App\Settings;

class SettingsController extends Controller
{
    public function getSettingsBySection($section)
    {
        return Settings::where('section', $section)->get();
    }
}
