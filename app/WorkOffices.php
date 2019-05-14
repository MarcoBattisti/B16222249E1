<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WorkOffices extends Model
{

    protected $connection = "dbCommon";

    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =[
        'id',
        'street',
        'number',
        'city',
        'province',
        'post_code',
    ];
}
