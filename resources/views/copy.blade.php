
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
                href="{{ route('document', ['id' => $id]) }}"
                class="btn btn-primary btn-sm">Back
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
                                <div class="row">
                                    @if($copy->bor_reader_id === $reader->reader_id ) 
                                        <a name="doc_select" 
                                        href="#" 
                                        class="btn  m-1 btn-outline-warning btn-sm disabled" >Checked Out By You</a>
                                    @elseif($copy->res_reader_id === $reader->reader_id ) 
                                        <a name="doc_select" 
                                        href="#" 
                                        class="btn  m-1 btn-outline-warning btn-sm disabled" >Reserved By You</a>
                                    @elseif($copy->bor_reader_id != null ||  $copy->res_reader_id != null)
                                        <a name="doc_select" 
                                        href="#" 
                                        class="btn  m-1 btn-outline-secondary btn-sm disabled" >Unavailable</a>
                                    @else
                                        <form class="m-1" method="POST" action="{{ route('copy.reserve', 
                                                                [   
                                                                    'id' => $id,
                                                                    'rid' => $reader->reader_id,
                                                                    'did' => $copy->document_id,
                                                                    'coid' => $copy->copy_no,
                                                                    'lid' => $copy->lib_id
                                                                ]
                                                            ) }}" accept-charset="UTF-8">
                                            @csrf
                                            <input name="_method" type="hidden" value="POST">
                                            <button type= "submit" class="btn btn-primary btn-sm" >Reserve</button>
                                        </form>
                                        <form class="m-1" method="POST" action="{{ route('copy.checkout', 
                                                                [   
                                                                    'id' => $id,
                                                                    'rid' => $reader->reader_id,
                                                                    'did' => $copy->document_id,
                                                                    'coid' => $copy->copy_no,
                                                                    'lid' => $copy->lib_id
                                                                ]
                                                            ) }}" accept-charset="UTF-8">
                                            @csrf
                                            <input name="_method" type="hidden" value="POST">
                                            <button type= "submit" class="btn btn-primary btn-sm" >Check Out</button>
                                        </form>
                                    @endif
                                </div>
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
