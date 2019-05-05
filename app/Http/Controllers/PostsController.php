<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use Carbon\Carbon;

class PostsController extends Controller
{
    public function index(){
        return Post::all;
    }

    public function getPagedList(Request $request){
        $pageSize = 10;
        if($request->has('pageSize')) {
           $pageSize = $request->input('pageSize');
        }
        if ($request->has('filter')) {
            $filters = $request->query('filter');
            return Post::whereIn('topic', $filters)
                ->orderBy('id', 'desc')
                ->paginate($pageSize);
        }else{
            return Post::orderBy('id', 'desc')->paginate($pageSize);
        }
    }

    public function create(Request $request) {
        $post = new Post();
        $post->image_link = $request->image_link;
        $post->date = Carbon::parse($request->date)->setTimezone('UTC');
        $post->topic = $request->topic;
        $post->title = $request->title;
        $post->body = $request->body;
        $post->author = $request->author;
        $post->main_topic = $request->main_topic;

        $post->save();

        return response()->json($post);
    }

    public function update(int $id, Request $request) {
        $post = Post::find($id);
        $post->image_link = $request->image_link;
        $post->topic = $request->topic;
        $post->title = $request->title;
        $post->body = $request->body;
        $post->author = $request->author;
        $post->main_topic = $request->main_topic;

        $post->save();

        return response()->json(['id' => $id]);
    }

    public function delete(int $id) {
        $post = Post::find($id);
        $post->delete();

        return response()->json('Post with id '.$id.' has been deleted successfully!' );
    }
}
