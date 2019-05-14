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

    Route::get('stats/users-online', 'AnalyticsController@usersOnline');
    Route::get('stats/time-average', 'AnalyticsController@timeAverage');
    Route::get('stats/visitors', 'AnalyticsController@fetchVisitors');
    Route::get('stats/most-visited-pages', 'AnalyticsController@fetchMostVisitedPages');

    Route::put('settings/{id}', ['uses' =>'SettingsController@update']);
    Route::put('settings/personal/stats', 'PersonalStatsController@update');

    Route::put('home/carousel-items/{id}', ['uses' =>'CarouselItemController@update']);
    Route::post('home/carousel-items', 'CarouselItemController@create');
    Route::delete('home/carousel-items/{id}', ['uses' =>'CarouselItemController@delete']);

    Route::post('news/posts', 'PostsController@create');
    Route::put('news/posts/{id}', ['uses' =>'PostsController@update']);
    Route::delete('news/posts/{id}', ['uses' =>'PostsController@delete']);

    Route::post('common/timeline-events', 'TimelineEventsController@create');
    Route::put('common/timeline-events/{id}', ['uses' =>'TimelineEventsController@update']);
    Route::put('common/timeline-events', 'TimelineEventsController@updateAll');
    Route::delete('common/timeline-events/{id}', ['uses' =>'TimelineEventsController@delete']);

    Route::get('common/notes', 'NoteController@findAll');
    Route::post('common/notes', 'NoteController@create');
    Route::put('common/notes/{id}', ['uses' =>'NoteController@update']);
    Route::delete('common/notes/{id}', ['uses' =>'NoteController@delete']);

    Route::post('about-my-work/services', 'ServiceController@create');
    Route::put('about-my-work/services/{id}', ['uses' =>'ServiceController@update']);
    Route::put('about-my-work/services', 'ServiceController@updateAll');
    Route::delete('about-my-work/services/{id}', ['uses' =>'ServiceController@delete']);

    Route::post('common/work-offices', 'WorkOfficesController@save');
    Route::delete('common/work-offices/{id}', ['uses' =>'WorkOfficesController@delete']);
});

Route::get('home/navbar-items', function() {
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

Route::get('about-me/latest-introduction', function() {
    $latestIntroductionById = Introductions::max('id');
    return Introductions::find($latestIntroductionById);
});

Route::get('common/timeline-events', 'TimelineEventsController@getAll');

Route::get('about-my-work/introduction-informations', 'IntroductionInformationsController@getAll');

Route::get('about-my-work/services', 'ServiceController@getAll');

Route::get('common/work-offices', 'WorkOfficesController@getAll');

Route::get('settings/personal/stats', 'PersonalStatsController@getAll');

Route::get('settings', 'SettingsController@getSettingsBySection');


