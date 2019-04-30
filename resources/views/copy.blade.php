
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
        <div class="container">
            <a  name="doc_select" 
                href="{{ route('document') }}"
                class="btn btn-outline-secondary btn-sm">Back
            </a>
            <h1>
            <small class="text-muted">Document Title:</small>
                {{ $copies[0]->title }}
            </h1>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Copy Id</th>
                    <th scope="col">Branch Name</th>
                    <th scope="col">Branch Location</th>
                    <th scope="col">Actions</th>

                </tr>
            </thead>
            @foreach($copies as $copy)
            <tbody>
                <tr>
                    <td>{{$copy->id}}</td>
                    <td>{{$copy->l_name}}</td>
                    <td>{{$copy->l_location}}</td>
                    <td> 
                        <a name="doc_select" 
                        href="#" 
                        class="btn btn-outline-primary btn-sm">Reserve</a>
                        <a name="doc_select" 
                        href="#" 
                        class="btn btn-outline-primary btn-sm">Checkout</a>
                    </td>
                </tr>
            </tbody>
            @endforeach
        </table>
        {{ $copies->links() }}
    </div>
@endsection
