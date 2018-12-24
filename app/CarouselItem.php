<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CarouselItem extends Model
{
    
    protected $connection = "dbHomePage";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $maps =[
        'id' => 'id',
        'backgroundLink' => 'background_link',
        'body' => 'body',
        'author' => 'author',
    ];
}
