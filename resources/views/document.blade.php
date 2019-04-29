
@extends('layouts.app')

@section('content')
    <div class = "container">
        @if(session()->get('success'))
        <div class="alert alert-success">
        {{ session()->get('success') }}  
        </div><br />
        @endif
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Document Id</th>
                    <th scope="col">Document Title</th>
                    <th scope="col">Date Published</th>
                    <th scope="col">Publisher Name</th>
                </tr>
            </thead>
            @foreach($documents as $document)
            <tbody>
                <tr>
                    <td>{{$document->document_id}}</td>
                    <td>{{$document->title}}</td>
                    <td>{{$document->p_date}}</td>
                    <td>{{$document->pub_name}}</td>
                </tr>
            </tbody>
            @endforeach
        </table>
        {{ $documents->links() }}
    </div>
@endsection
