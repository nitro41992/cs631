
@extends('layouts.app')

@section('content')
    <div class="container">
        <form class="mt-5" method="post" action="{{ route('getReaderByCardNumber') }}">
            <div class="form-group">
                @csrf
                <label for="card_number">Library Card Number</label>
                <input type="number" 
                class="form-control" 
                name="card_num" 
                id="card_number" 
                aria-describedby="libraryCardNumber" 
                placeholder="01234567" 
                max="99999999"
               >
                <small id="libraryCardNumber" class="form-text text-muted">Enter your Library Card Number to continue.</small>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
@endsection
