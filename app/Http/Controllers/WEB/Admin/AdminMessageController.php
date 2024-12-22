<?php

namespace App\Http\Controllers\WEB\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ContactMessage;
use App\Models\User;
class adminMessageController extends Controller
{
    public function index()
    {
        $message = ContactMessage::all();
        return view('admin.message',compact('message'));
    }
    public function deleteMessage($id)
    {
        $message = ContactMessage::find($id);
        $message->delete();

        $message = "Successfully Deleted";
        $notification = array('message' => $message,'alert' => 'success');
        return redirect()->back()->with($notification);
    }
}
