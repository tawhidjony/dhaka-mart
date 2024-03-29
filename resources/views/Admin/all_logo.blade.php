@extends('admin_layout')
@section('admin_content')

<ul class="breadcrumb">
    <li>
        <i class="icon-home"></i>
        <a href="index.html">Home</a> 
        <i class="icon-angle-right"></i>
    </li>
    <li><a href="#">Slider</a></li>
</ul>
<p class="alert-success">
    <?php
    $message=Session::get('message');
     if($message)
     {
       echo $message;
       Session::put('message',null );
     }
      ?>
  </p>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon user"></i><span class="break"></span>Slider</h2>
           
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
              <thead>
                  <tr>
                      <th>Category ID </th>
                      <th>Image logo Name</th>
                      <th>Status</th>
                      <th>Actions</th>
                  </tr>
                </thead>
                @foreach( $all_logo as $v_logo)
                <tbody>
                    <tr>
                        <td>{{$v_logo->logo_id}}</td>
                        <td ><img src="{{URL::to($v_logo->logo_image)}}" style="width:200px; height:80"></td>
                        <td class="center">
                            @if($v_logo->publication_status==1)
                            <span class="label label-success">Active</span>
                            @else
                            <span class="label label-danger"> Unactive</span> 
                            @endif
                        </td>
                        <td class="center">
                        @if($v_logo->publication_status==1)
                            <a class="btn btn-danger" href="{{URL::to('/unactive_logo/'. $v_logo->logo_id)}}">
                                <i class="halflings-icon white thumbs-down"></i>  
                            </a>
                        @else
                              <a class="btn btn-success" href="{{URL::to('/active_logo/'. $v_logo->logo_id)}}">
                                <i class="halflings-icon white thumbs-up"></i>  
                            </a>
                        @endif
                            
                            <a class="btn btn-danger" href="{{URL::to('/delete-logo/'. $v_logo->logo_id)}}" id="delete">
                                <i class="halflings-icon white trash"></i> 
                            </a>
                        </td>
                    </tr>
                </tbody>
                @endforeach
          </table>            
        </div>
    </div><!--/span-->

</div><!--/row-->

@endsection