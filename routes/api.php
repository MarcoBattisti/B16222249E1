<?php

use Illuminate\Http\Request;
Use App\NavbarItem;
Use App\CarouselItem;
Use App\Post;
Use App\WorkOffices;
Use App\TimelineEvents;
Use App\Introductions;
Use App\Service;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::post('login', 'ApiController@login');
Route::post('register', 'ApiController@register');

Route::group(['middleware' => 'auth.jwt'], function () {
    Route::get('logout', 'ApiController@logout');

    Route::get('user', 'ApiController@getAuthUser');
});

Route::get('home/navbar-items', function() {
    \Illuminate\Support\Facades\Log::info('In home/navbar-items route!');
    return NavbarItem::all();
});

Route::get('home/carousel-items', function() {
    return CarouselItem::all();
});

Route::get('news/latest/{num}', function(Request $request, $num) {
    return Post::orderBy('date','desc')->take($num)->get();
});

Route::get('news/posts', function(Request $request) {
	if ($request->has('filter')) {
	   $filters = $request->query('filter');
       return Post::whereIn('topic', $filters)
					->orderBy('date', 'desc')
					->paginate(10);
	}else{
	   return Post::orderBy('date', 'desc')->paginate(10);
	}
});

Route::get('news/topics', function() {
    return Post::distinct('topic')->pluck('topic');
});

Route::get('news/main-posts', function() {
    return Post::where('main_topic','=', 1)->get();
});

Route::get('news/{id}', function($id) {
    return Post::findOrFail($id);;
});

Route::get('common/timeline-events', function() {
    return TimelineEvents::all();
});

Route::get('about-me/latest-introduction', function() {
    $latestIntroductionById = Introductions::max('id');
    return Introductions::find($latestIntroductionById);
});

Route::get('about-my-work/services', function() {
    return Service::all();
});

Route::get('common/work-offices', function() {
    return WorkOffices::all();
});

