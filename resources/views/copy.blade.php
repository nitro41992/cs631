
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
                href="{{ route('document', ['id' => $cid]) }}"
                class="btn btn-outline-secondary btn-sm">Back
            </a>
            @if ($obj['copies']->count() > 0 )
                <h3>
                <small class="text-muted">Document Title:</small>
                    {{ $obj['copies'][0]->title }}
                </h3>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Copy Id</th>
                            <th scope="col">Branch Name</th>
                            <th scope="col">Branch Location</th>
                            <th scope="col">Actions</th>

                        </tr>
                    </thead>
                    @foreach($obj['copies'] as $copy)
                    <tbody>
                        <tr>
                            <td>{{$copy->copy_no}}</td>
                            <td>{{$copy->l_name}}</td>
                            <td>{{$copy->l_location}}</td>
                            <td>
                                @if($copy->bor_reader_id === $reader->reader_id ) 
                                    <a name="doc_select" 
                                    href="#" 
                                    class="btn btn-outline-warning btn-sm disabled">Return</a>
                                @elseif($copy->bor_reader_id != null )
                                    <a name="doc_select" 
                                    href="#" 
                                    class="btn btn-outline-secondary btn-sm" >Checked Out</a>
                                @else
                                    <a name="doc_select" 
                                    href="#" 
                                    class="btn btn-outline-primary btn-sm" >CheckOut</a>
                                @endif
                                @if($copy->res_reader_id === $reader->reader_id ) 
                                    <a name="doc_select" 
                                    href="#" 
                                    class="btn btn-outline-warning btn-sm disabled" >Cancel Reservation</a>
                                @elseif($copy->res_reader_id != null)
                                    <a name="doc_select" 
                                    href="#" 
                                    class="btn btn-outline-secondary btn-sm" >Reserved</a>
                                @else
                                    <a name="doc_select" 
                                    href="#" 
                                    class="btn btn-outline-primary btn-sm" >Reserve</a>
                                @endif
                            </td>
                        </tr>
                    </tbody>
                    @endforeach
                </table>
                </div>
            @else
                <h1>
                    No copies found for this Document.
                </h1>
            @endif
        </div>
@endsection
