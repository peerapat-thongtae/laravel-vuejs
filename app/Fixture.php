<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Fixture extends Model
{
    protected $fillable=['match_id','round','date','time','hometeam',
                        'awayteam','scorehometeam','scoreawayteam','competitions','created_at','updated_at'];
}
