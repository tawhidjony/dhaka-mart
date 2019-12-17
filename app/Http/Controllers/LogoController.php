<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class LogoController extends Controller
{
   public function index()
   {
       return view ('Admin.add_logo');
   }


   public function save_logo(Request $request)
   {
    $data=array();
    $data['publication_status']=$request->publication_status; 
    $image=$request->file('logo_image');
    if ($image) {
       $image_name=str_random(20);
       $ext=strtolower($image->getClientOriginalExtension());
       $image_full_name=$image_name.'.'.$ext;
       $upload_path='logo/';
       $image_url=$upload_path.$image_full_name;
       $success=$image->move($upload_path,$image_full_name);
       if ($success) {
         $data['logo_image']=$image_url;
            DB::table('tbl_logo')->insert($data);
            Session::put('message','logo added successfully!!');
            return Redirect::to('/add-logo');
         // echo "<pre>";
         // print_r($data);
         // echo "</pre>";
         // exit();
            
       }
    }
    $data['logo_image']='';
            DB::table('tbl_logo')->insert($data);
            Session::put('message','logo added successfully without image!!');
            return Redirect::to('/add-logo');
   }


   public function all_logo()
    {
    	
       $all_logo=DB::table('tbl_logo')->get();
       $manage_logo=view('Admin.all_logo')
           ->with('all_logo',$all_logo);
       return view('admin_layout')
           ->with('Admin.all_logo',$manage_logo); 
    }


    
}
