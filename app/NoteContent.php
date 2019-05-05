<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NoteContent extends Model
{
    protected $connection = "dbCommon";

    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'note_id', 'value', 'done'
    ];
}
