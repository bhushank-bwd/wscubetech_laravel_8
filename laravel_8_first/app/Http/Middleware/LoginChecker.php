<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class LoginChecker
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if(session()->has('user_id')){
           
            $request->session()->forget(['mw_msg']);
            return $next($request);
        }else{
            $request->session()->put('mw_msg', "login error");
            return Redirect('page-denied');
        }
    }
}
