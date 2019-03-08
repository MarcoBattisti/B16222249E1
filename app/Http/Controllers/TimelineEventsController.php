<?php

namespace App\Http\Controllers;

use App\TimelineEvents;
use Illuminate\Http\Request;

class TimelineEventsController extends Controller
{
    public function index(){
        return TimelineEvents::all;
    }
}
