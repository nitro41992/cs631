@extends('layouts.app')

@section('content')
    <div class = "container">
        @if(session()->get('success'))
        <div class="alert alert-success">
        {{ session()->get('success') }}  
        </div><br />
        @endif
        @if(session()->get('error'))
        <div class="alert alert-danger">
        {{ session()->get('error') }}  
        </div><br />
        @endif
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Branch Id</th>
                    <th scope="col">Branch Name</th>
                    <th scope="col">Branch Location</th>
                </tr>
            </thead>
            @foreach($obj['branches'] as $branch)
                <tbody>
                    <tr>
                        <td>{{$branch->lib_id}}</td>
                        <td>{{$branch->l_name}}</td>
                        <td>{{$branch->l_location}}</td>
                    </tr>
                </tbody>
            @endforeach
        </table>
    </div>
@endsection
