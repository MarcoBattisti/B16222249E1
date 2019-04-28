<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CarouselItem;

class CarouselItemController extends Controller
{
	public function index(){
        return CarouselItem::all;
    }

    public function update(int $id, Request $request) {
        $carousel = CarouselItem::find($id);
        $carousel->body = $request->body;
        $carousel->author = $request->author;
        $carousel->backgroundLink = $request->backgroundLink;

        $carousel->save();

        return response()->json(['id' => $id]);
    }

    public function create(Request $request) {
        $carousel = new CarouselItem();
        $carousel->body = $request->body;
        $carousel->author = $request->author;
        $carousel->backgroundLink = $request->backgroundLink;

        $carousel->save();

        return response()->json($carousel);
    }

    public function delete(int $id) {
        $carousel = CarouselItem::find($id);
        $carousel->delete();

        return response()->json("Carousel with id ".$id.' has been deleted successfully!' );
    }
}
