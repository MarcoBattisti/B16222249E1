<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class IntroductionInformations extends Model
{
    protected $connection = "dbAboutMyWorkPage";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable =[
        'id',
        'name',
        'value',
        'icon',
    ];
}
