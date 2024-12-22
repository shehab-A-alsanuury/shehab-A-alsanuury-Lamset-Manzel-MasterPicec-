<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SeoSetting extends Model
{
    use HasFactory;
    protected $table = 'seo_settings';
    protected $fillable = [
        'page_name',
        'seo_title',
        'seo_description',
    ];
}
