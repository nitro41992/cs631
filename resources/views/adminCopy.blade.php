
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
                href="{{ route('home') }}"
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
                                    @if($copy->res_reader_id != null)
                                        <form class="m-1" method="POST" action="{{ route('adminCopy.cancelReservation', 
                                                                [   
                                                                    'did' => $copy->document_id,
                                                                    'coid' => $copy->copy_no,
                                                                    'lid' => $copy->lib_id
                                                                ]
                                                            ) }}" accept-charset="UTF-8">
                                            @csrf
                                            @method('DELETE')
                                            <input name="_method" type="hidden" value="POST">
                                            <button type= "submit" class="btn btn-outline-warning btn-sm" >Cancel Reservation</button>
                                        </form>
                                    @elseif($copy->bor_reader_id != null)
                                        <form class="m-1" method="POST" action="{{ route('adminCopy.return', 
                                                                [   
                                                                    'did' => $copy->document_id,
                                                                    'coid' => $copy->copy_no,
                                                                    'lid' => $copy->lib_id
                                                                ]
                                                            ) }}" accept-charset="UTF-8">
                                            @csrf
                                            @method('DELETE')
                                            <input name="_method" type="hidden" value="POST">
                                            <button type= "submit" class="btn btn-outline-warning btn-sm" >Return</button>
                                        </form>
                                    @else
                                        <a name="doc_select" 
                                        href="#" 
                                        class="btn  m-1 btn-outline-secondary btn-sm disabled" >Available</a>
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