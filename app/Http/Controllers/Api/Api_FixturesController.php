<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Fixture; //เรียกตัว Model
class Api_FixturesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $fixtures = Fixture::all();
        return response()->json($fixtures);
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
        $fixtures = new Fixtures();
        $fixtures->match_id = 1;
        $fixtures->hometeam = $request->get('hometeam');
        $fixtures->awayteam = $request->get('awayteam');
        $fixtures->date = $request->get('date');
        $fixtures->time = $request->get('time');
        $fixtures->competitions = $request->get('competitions');
        $fixtures->round = $request->get('round');
        $fixtures->stadium = $request->get('stadium');
        
        $fixtures->save();
        
        return response()->json($fixtures);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $fixtures=Fixture::find($id);
        return response()->json($fixtures);
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
        
        $fixtures=Fixture::find($id);
        
        $fixtures->hometeam = $request->get('hometeam');
        $fixtures->awayteam = $request->get('awayteam');
        $fixtures->date = $request->get('date');
        $fixtures->time = $request->get('time');
        $fixtures->competitions = $request->get('competitions');
        $fixtures->round = $request->get('round');
        $fixtures->stadium = $request->get('stadium');
        
        $fixtures->update();
        return response()->json($fixtures);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $fixtures=Fixture::find($id);
        $fixtures->delete();
        return response()->json($fixtures);
    }
}
