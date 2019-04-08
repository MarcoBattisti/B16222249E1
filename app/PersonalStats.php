<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PersonalStats extends Model
{
    protected $connection = "dbSettings";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =[
        'id',
        'name',
        'value',
    ];
}
