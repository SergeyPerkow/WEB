<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\aboutuser;
use App\Models\faculty;
use App\Models\department;
use App\Models\user;
use DB;

class aboutusercontroller extends Controller
{
    public function submit(Request $req)
    {

        $socket = $req->input('faculties');
        $socket2 = $req->input('department');
        $socket3 = $req->input('DOLZ');
        $socket4 = $req->input('FIO');
        DB::table('users')->where('id', auth()->id())->update(['faculty' => $socket,
        'department' => $socket2, 'DOLZ' => $socket3,'FIO' => $socket4,'id1' => 2]);
        return redirect()->route('dashboard');
    }
    public function ConfirmData($id){
        DB::table('users')->where('id', $id)->update(['id1' => 3]);
        return back();
    }


    public function UnConfirmData($id){
        DB::table('users')->where('id', $id)->update(['id1' => 1]);
        return back();
    }
    
}

