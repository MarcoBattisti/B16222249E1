<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
	
    protected $connection = "dbNewsPage";

    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =[
        'id',
        'imageLink',
        'topic',
        'title',
        'body',
        'author',
        'date',
        'mainTopic',
    ];
}
