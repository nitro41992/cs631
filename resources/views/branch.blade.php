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
        <div class=row>
            <div class="card mb-3">
                <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Borrower</th>
                            <th scope="col">Books Borrowed</th>
                        </tr>
                    </thead>
                    @foreach($obj['freqBorrowers'] as $freqBorrower)
                        <tbody>
                            <tr>
                                <td>{{$freqBorrower->r_name}}</td>
                                <td>{{$freqBorrower->count}}</td>

                            </tr>
                        </tbody>
                    @endforeach
                </table>
                </div>
            </div>
            <div class="card mb-3">
                <div class="card-body">

                </div>
            </div>
            <div class="card mb-3">
                <div class="card-body">

                </div>
            </div>
        </div>
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
