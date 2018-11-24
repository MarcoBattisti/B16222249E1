<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CarouselItem;

class CarouselItemController extends Controller
{
	public function index(){
        return CarouselItem::all;
    }
}
