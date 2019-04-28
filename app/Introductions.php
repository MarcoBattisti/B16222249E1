<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Introductions extends Model
{
    protected $connection = "dbAboutMePage";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'text',
    ];
}
