<?php
 namespace App\Http\Controllers;
 use Illuminate\Http\Request;
 use Validator,Redirect,Response,File;
 use Socialite;
 use App\User;
 class SocialController extends Controller
 {
 public function redirect($provider)
 {
  return \Socialite::driver('facebook')->redirect();
}
 public function callback($provider)
 {
//    $getInfo = \Socialite::driver($provider)->user(); 
//    $user = $this->createUser($getInfo,$provider); 
//    auth()->login($user); 
//    return redirect()->to('/');
//  }
//  function createUser($getInfo,$provider){
//  $user = User::where('provider_id', $getInfo->id)->first();
 
//  if (!$user) {
//       $user = User::create([
//          'name'     => $getInfo->name,
//          'email'    => $getInfo->email,
//          'provider' => $provider,
//          'provider_id' => $getInfo->id,
//          'avatar'   =>$getInfo->avatar,
         
//      ]);
//    }
//    return $user;
try {
  $user = \Socialite::driver('facebook')->user();
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
  $newUser->provider_id     = $user->id;
  $newUser->avatar          = $user->avatar;
  // $newUser->avatar_original = $user->avatar_original;
  $newUser->save();
  auth()->login($newUser, true);
}
return redirect()->to('/');
}
 }
 