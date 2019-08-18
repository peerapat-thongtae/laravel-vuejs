<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Player; //เรียกตัว Model
class Api_PlayerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = Player::all();
        return response()->json($users);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = new Player();
        $user->id = $request->get('id');
        $user->fname = $request->get('fname');
        $user->lname = $request->get('lname');
        $user->birthdate = $request->get('birthdate');
        $user->position = $request->get('position');
        $user->signsince = $request->get('signsince');
        $user->picture = $request->get('picture');
        $user->shirtpicture = $request->get('shirtpicture');
        $user->save();
        return response()->json($user);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user=Player::find($id);
        return response()->json($user);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
        $user=Player::find($id);
        $user->id = $request->get('id');
        $user->fname = $request->get('fname');
        $user->lname = $request->get('lname');
        $user->birthdate = $request->get('birthdate');
        $user->position = $request->get('position');
        $user->signsince = $request->get('signsince');
        $user->picture = $request->get('picture');
        $user->shirtpicture = $request->get('shirtpicture');
        
        $user->update();
        return response()->json($user);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user=Player::find($id);
        $user->delete();
        return response()->json($user);
    }
}
