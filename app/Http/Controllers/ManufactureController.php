<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class ManufactureController extends Controller
{
    public function index()
    {   $this->AdminAuthCheck();
        return view ('Admin.add_manufacture');
    }

    public function save_manufacture(Request $request)
    {   $this->AdminAuthCheck();
        $data = array();
        $data['manufacture_id']=$request->manufacture_id;
        $data['manufacture_name']=$request->manufacture_name;
        $data['manufacture_description']=$request->manufacture_description;
        $data['publication_status']=$request->publication_status;
 
       DB::table('tbl_manufacture')->insert($data);
       Session::put('message',' Manufacture added Successfully !!');
       return Redirect::to('/add-manufacture');
    }

    public function all_manufacture()
    {   
        $this->AdminAuthCheck();
        $all_manufacture_info=DB::table('tbl_manufacture')->get();
        $manage_manufacture=view('Admin.all_manufacture')
                    ->with('all_manufacture_info',$all_manufacture_info);
            return view('admin_layout')
                    ->with('Admin.all_manufacture',$manage_manufacture);         
                
    }


    public function delete_manufacture($manufacture_id)
    {       $this->AdminAuthCheck();
             DB::table('tbl_manufacture')
             ->where('manufacture_id',$manufacture_id)
             ->delete();
             Session::put('message',' Manufacture Delete Successfully !!');
             return Redirect::to('/all-manufacture');
    }

    // unactive manufacture function
   public function unactive_manufacture($manufacture_id)
   {    $this->AdminAuthCheck();
        DB::table('tbl_manufacture')
            ->where('manufacture_id',$manufacture_id)
            ->update(['publication_status' =>0]);
            Session::put('message',' Manufacture unactive Successfully !!');
            return Redirect::to('/all-manufacture');
   }


    // Active manufacture function
   public function active_manufacture($manufacture_id)
   {    $this->AdminAuthCheck();
        DB::table('tbl_manufacture')
                ->where('manufacture_id',$manufacture_id)
                ->update(['publication_status' =>1]);
                Session::put('message',' Manufacture active Successfully !!');
                return Redirect::to('/all-manufacture');
   }

    // Edit manufacture function
    public function edit_manufacture($manufacture_id)
    {   $this->AdminAuthCheck();
        $manufacture_info= DB::table('tbl_manufacture')
                ->where('manufacture_id',$manufacture_id)
                ->first();
    
            $manufacture_info=view('Admin.edit_manufacture')
                    ->with('manufacture_info',$manufacture_info);
            return view('admin_layout')
                    ->with('Admin.all_manufacture',$manufacture_info); 
    }


    // update manufacture function
   public function update_manufacture(Request $request,$manufacture_id)
   {    $this->AdminAuthCheck();
        $data=array();
        $data['manufacture_name']=$request->manufacture_name;
        $data['manufacture_description']=$request->manufacture_description;

        DB::table('tbl_manufacture')
            ->where('manufacture_id',$manufacture_id)
            ->update($data);
            Session::put('message',' Manufacture update Successfully !!');
            return Redirect::to('/all-manufacture');
   }



// user authentication system security
public function AdminAuthCheck()
{
   $admin_id=Session::get('admin_id');
   if($admin_id){
       return;
   }else{
       return Redirect::to('/Admin')->send();
   }

}
// user authentication system security end

}
