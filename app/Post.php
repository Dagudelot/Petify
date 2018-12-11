<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function Author(){
    	return $this->belongsTo(User::class);
    }

    public function Category(){
    	return $this->belongsTo(Category::class);
    }
}
