<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\RequestLogin;
use App\User;
use Illuminate\Support\Facades\Auth;
use Socialite;

use Illuminate\Support\Facades\Log;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    // protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('guest')->except('logout');
    }

    public function getFormLogin()
    {
        $title_page = 'Đăng nhập';
        return view('auth.login',compact('title_page'));
    }

    public function postLogin(RequestLogin $request)
    {
        $credentials = $request->only('email','password');
        if (Auth::attempt($credentials)) {
            $this->logLogin();
            return redirect()->intended('/');
        }

        return redirect()->back();
    }

    protected function logLogin()
    {
        $log = get_agent();
        $historyLog = \Auth::user()->log_login;
        $historyLog = json_decode($historyLog,true) ?? [];
        $historyLog[] = $log;
        \DB::table('users')->where('id', \Auth::user()->id)
            ->update([
                'log_login' => json_encode($historyLog)
            ]);
        Log::info($historyLog);
    }

    public function getLogout()
    {
        Auth::logout();
        return redirect()->to('/');
    }
    public function redirectToProvider()
{
    return \Socialite::driver('google')->redirect();
}
public function handleProviderCallback()
    {
        try {
            $user = \Socialite::driver('google')->user();
        } catch (\Exception $e) {
            return redirect()->back();
        }
        // only allow people with @company.com to login
        if(explode("@", $user->email)[1] !== 'gmail.com'){
            return redirect()->to('/');
        }
        // check if they're an existing user
        $existingUser = User::where('email', $user->email)->first();
        if($existingUser){
            // log them in
            auth()->login($existingUser, true);
        } else {
            // create a new user
            $newUser                  = new User();
            $newUser->name            = $user->name;
            $newUser->email           = $user->email;
            $newUser->google_id       = $user->id;
            $newUser->avatar          = $user->avatar;
            // $newUser->avatar_original = $user->avatar_original;
            $newUser->save();
            auth()->login($newUser, true);
        }
        return redirect()->to('/');
    }
}
