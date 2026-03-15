<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\Users\ChangePasswordRequest;
use App\Http\Requests\Users\ProfileUpdateRequest;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class ProfileController extends BaseController
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    /**
     * Return the user data
     */
    public function profile()
    {
        $user = auth()->user();
        return $this->sendResponse($user, 'User Profile');
    }

    /**
     * Update the profile by users
     */
    public function updateProfile(ProfileUpdateRequest $request)
    {
        /** @var User $user */
        $user = auth()->user();

        $user->update($request->only(['name', 'email']));

        return $this->sendResponse($user, 'Profile has been updated');
    }

    /**
     * Update the password
     */
    public function changePassword(ChangePasswordRequest $request)
    {
        /** @var User $user */
        $user = auth()->user();

        $user->update([
            'password' => Hash::make($request->new_password)
        ]);

        return $this->sendResponse([], 'Password has been updated');
    }
}
