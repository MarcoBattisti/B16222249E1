<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TimelineEvents extends Model
{
    protected $connection = "dbCommon";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'year', 'title', 'text', 'color', 'icon',
    ];
}
