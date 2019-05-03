
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
        <div class="container mb-3">
            <div class="row">
                <div class="col-sm">
                    <form class="navbar-form" action="{{ route('reader.filterName') }}" method="GET" role="search">
                        @csrf
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search by Reader Name" name="r_name">
                            <div class="input-group-btn">
                                <button class="btn btn-primary" type="submit">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm">
                    <form class="navbar-form" action="{{ route('reader.filterCardNum') }}" method="GET" role="search">
                        <div class="input-group">
                            <input type="number" class="form-control" placeholder="Search by Libary Card Number" name="card_num">
                            <div class="input-group-btn">
                                <button class="btn btn-primary" type="submit">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="ccenter mx-auto mb-3">
                    <a href="{{ route('reader.index') }}" class="btn btn-primary">Clear Search</a>
            </div>
        </div>
        <div class="card mb-3">
            <div class="card-body">
                <form class="mt-1" method="POST" action="{{ route('reader.insertReader') }}">
                    @csrf
                    <div class="form-group">
                        <label for="r_name">Reader Name:</label>
                        <input type="text" class="form-control" name="r_name" id="r_name" aria-describedby="r_name"  placeholder="" required>
                    </div>
                    <div class="form-group">
                        <label for="address">Address:</label>
                        <input type="text" class="form-control" name="address" id="address" aria-describedby="address"  placeholder="" required>
                    </div>
                    <div class="form-group">
                        <label for="card_num">Library Number:</label>
                        <input class="form-control" name="card_num" id="card_num" aria-describedby="card_num"  placeholder="" type="text" pattern="\d*" maxlength="8" required>
                    </div>
                    <div class="form-group">
                        <label for="r_type">Select Type</label>
                        <select class="form-control" name='r_type' id="r_type">
                                <option>Reader</option>
                                <option>Student</option>
                                <option>Senior Citizen</option>
                                <option>Staff</option>
                        </select>
                        <!-- <div class="mt-2 ml-1">
                            <a href="#">Add New Publisher</a>
                        </div> -->
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>  
            </div>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Reader Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Address</th>
                    <th scope="col">Library Card #</th>
                    <th scope="col">Type</th>
                </tr>
            </thead>
            @foreach($obj['readers'] as $reader)
                <tbody>
                    <tr>
                        <td>{{$reader->reader_id}}</td>
                        <td>{{$reader->r_name}}</td>
                        <td>{{$reader->address}}</td>
                        <td>{{$reader->card_num}}</td>
                        <td>{{$reader->r_type}}</td>
                    </tr>
                </tbody>
            @endforeach
        </table>
    </div>
@endsection
