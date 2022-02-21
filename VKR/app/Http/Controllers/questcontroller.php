<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\news;
use DB;
use Auth;
use App\Models\FileManager;
use App\Models\quest;

class questcontroller extends Controller
{
    public function __construct()
    {
    $this->middleware('auth');
    }
    //показывает задания, также передаем данные для показа отправленых(from) и принятых заданий(from2), новостей и статус задания
    public function ShowQuest($id, Request $req){
        $user = New User;
        $b = $req->input('quest_status');
        $Questfrom = New quest;
        $idfaculty = Auth::user()->faculty;
        $iddepartment = Auth::user()->department;
        $news = New news;
        return view('Quest', 
        ['name' => $id, 
        'quest_status' =>$b,
        'from' =>  $Questfrom->where('id_to', '=', $id)
            ->where('id_11', '=', $b)->
                where('id_from', '=', auth()->id())->get(),
        'from2' =>  $Questfrom->where('id_to', '=', auth()->id())
            ->where('id_11', '=', $b)->where('id_from', '=', $id)->get(),
        'news' => $news->where('id_for', '=', $idfaculty)->get(),
        'news2' => $news->where('id_for_department', '=', $iddepartment)->get()]);
        
    }
    
    public function addquest(Request $request) {
        
        
       $touser = $request->input('idto');
       $subject = $request->input('subject');;
        $quest = quest::create([
            'subject' => $subject,
            'id_from' => auth()->id(),
            'id_to' => $touser,
            'id_11' => 0,]);
        return back();
    }

    public function delquest(Request $request, $id) {
        DB::table('quests')->where('id', $id)->update(['id_11' => 1]);
        return back();
    }

}
