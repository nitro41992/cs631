@extends('layouts.app')

@section('content')
<div class="container">
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
    <div class="card mb-3">
        <div class="card-body">
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
    </div>
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
    <div class="card m-3">
        <div class="card-body">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Document Id</th>
                        <th scope="col">Book Name</th>
                        <th scope="col">ISBN</th>
                        <th scope="col">Branch Name</th>
                        <th scope="col">Most Borrowed By Branch</th>
                    </tr>
                </thead>
                @foreach($obj['mostBorrowed'] as $mostBorrowed)
                <tbody>
                    <tr>
                        <td>{{$mostBorrowed->document_id}}</td>
                        <td>{{$mostBorrowed->title}}</td>
                        <td>{{$mostBorrowed->isbn}}</td>
                        <td>{{$mostBorrowed->l_name}}</td>
                        <td>{{$mostBorrowed->count}}</td>
                    </tr>
                </tbody>
                @endforeach
            </table>
        </div>
    </div>
    <div class="card m-3">
        <div class="card-body">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Reader Name</th>
                        <th scope="col">Reader Library Number</th>
                        <th scope="col">Fee</th>
                    </tr>
                </thead>
                @foreach($obj['avgFineByUser'] as $avgFineByUser)
                <tbody>
                    <tr>
                        <td>{{$avgFineByUser->r_name}}</td>
                        <td>{{$avgFineByUser->card_num}}</td>
                        <td>${{$avgFineByUser->fee}}</td>
                    </tr>
                </tbody>
                @endforeach
                <tfoot>
                    <tr>
                        <th id="Total Average" colspan="2">Average :</th>
                        <td class='font-weight-bold'>${{$obj['avgFineByUser'][0]->fee}}</td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
    <div class="card mb-3">
        <div class="card-body">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Document Id</th>
                        <th scope="col">Book Name</th>
                        <th scope="col">ISBN</th>
                        <th scope="col">Most Popular Books This Year</th>
                    </tr>
                </thead>
                @foreach($obj['mostBorrowedThisYear'] as $mostBorrowedThisYear)
                <tbody>
                    <tr>
                        <td>{{$mostBorrowedThisYear->document_id}}</td>
                        <td>{{$mostBorrowedThisYear->title}}</td>
                        <td>{{$mostBorrowedThisYear->isbn}}</td>
                        <td>{{$mostBorrowedThisYear->count}}</td>
                    </tr>
                </tbody>
                @endforeach
            </table>
        </div>
    </div>
</div>
@endsection