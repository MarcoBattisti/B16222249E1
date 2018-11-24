<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NavbarItem extends Model
{

    protected $connection = "dbHomePage";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'name', 'path',
    ];
}
