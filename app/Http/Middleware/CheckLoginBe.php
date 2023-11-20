<?php

namespace App\Http\Middleware;

use Closure;

class CheckLoginBe
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {if (get_data_user('admins')) {
        return redirect()->route('get.admin.index');
    }
    
    return $next($request);
    }
}
