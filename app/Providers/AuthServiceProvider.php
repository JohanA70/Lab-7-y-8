<?php

namespace App\Providers;

use App\Models\Task;
use App\Policies\TaskPolicy;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    protected $policies = [
        \App\Models\Task::class => \App\Policies\TaskPolicy::class,
    ];

    public function boot()
    {
        $this->registerPolicies();
    }
}