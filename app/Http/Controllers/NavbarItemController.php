<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\NavbarItem;

class NavbarItemController extends Controller
{
    public function index(){
        return NavbarItem::all;
    }
}
