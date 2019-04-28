<?php

namespace App\Http\Controllers;

use App\WorkOffices;
use Illuminate\Http\Request;

class WorkOfficesController extends Controller
{
    public function index(){
        return WorkOffices::all;
    }
}
