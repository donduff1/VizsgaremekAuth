<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    // Login method
    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            $token = $user->createToken('authToken')->plainTextToken;
            return response()->json(['token' => $token], 200);
        } else {
            return response()->json(['message' => 'Unauthorized'], 401);
        }
    }

    // Registration method
    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'birthdate' => 'required|date', // Validation rule for birthdate
        ]);
    
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'birthdate' => $request->birthdate, // Include the birthdate field
        ]);
    
        return response()->json(['message' => 'User registered successfully', 'user' => $user], 201);
    }
    


    // Delete method
    public function delete(Request $request)
    {
        $user = Auth::user();
        $user->tokens()->delete();
        $user->delete();

        return response()->json(['message' => 'User deleted successfully'], 200);
    }
}
