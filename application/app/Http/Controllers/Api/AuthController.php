<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class AuthController extends Controller
{
    public $successStatus = 200;
    //
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            // 'rol' => 'required',
            'confirm_password' => 'required|same:password',
            
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 422);
        }

        $input = $request->all();
        $input['password'] = bcrypt($request->get('password'));
        $input['rol'] = 2;
        $user = User::create($input);
        $token =  $user->createToken('mdExpress')->accessToken;

        return response()->json([
            'token' => $token,
            'user' => $user
        ], 200);
    }
    public function login($email, $password)
    {
        if(Auth::attempt(['email' => $email, 'password' => $password])){
            $user = Auth::user();
            $token =  $user->createToken('mdExpress')->accessToken;

            return response()->json([
                'token' => $token,
                'user' => $user
            ], 200);
        }
        else{
            return response()->json(['error'=>'Unauthorised'], 401);
        }
    }
}
