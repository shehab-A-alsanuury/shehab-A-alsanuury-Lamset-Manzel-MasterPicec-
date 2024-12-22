<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Setting;
use Illuminate\Support\Facades\View;
use Illuminate\Pagination\Paginator;
use App\Models\GoogleRecaptcha;
use App\Models\TawkChat;
use App\Models\GoogleAnalytic;
use App\Models\Product;
use App\Models\EmailConfiguration;
use App\Models\Language;
use Auth;
use Config;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrap();
        if (! $this->app->runningInConsole()) {
            $setting = Setting::first();
            $languages = Language::where('status','active')->get();
            $googleRecaptcha = "test";
            $tawk_chat = TawkChat::first();
            $googleAnalytic = "test";
            View::share(compact('setting','googleRecaptcha','tawk_chat','googleAnalytic','languages'));
        }
    }
}
