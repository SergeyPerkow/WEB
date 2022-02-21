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
    //функция для записи данных об учебном подразделении пользователя в ВУЗе
    public function submit(Request $req)
    {

        DB::table('users')->where('id', auth()->id())->update([
        'faculty' => $req->input('faculties'),
        'department' => $req->input('department'), 
        'role' => $req->input('role'),
        'FIO' => $req->input('FIO'),
        'id1' => 2]);
        return redirect()->route('dashboard');
    }
    //функция для подверждения правильности данных администратором
    public function ConfirmData($id){
        DB::table('users')->where('id', $id)->update(['id1' => 3]);
        return back();
    }


    public function UnConfirmData($id){
        DB::table('users')->where('id', $id)->update(['id1' => 1]);
        return back();
    }
    
}

