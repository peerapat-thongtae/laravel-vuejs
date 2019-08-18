<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Player extends Model
{
    protected $fillable=['id','fname','lname','birthdate','position',
                        'signsince','picture','shirtpicture'];
}
