
@extends('layouts.app')

@section('content')
    @foreach($documents as $document)
    <table class="table table-striped">
    <thead>
    </thead>
    <tbody>
        <tr>
            <td>{{$document->title}}</td>
        </tr>
    </tbody>
        @endforeach
@endsection
