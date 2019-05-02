
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
            <div class="col-md-4 order-md-2 mb-4">
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">Fine</h6>
                    </div>
                    <span class="font-weight-bold {{$fee != 0.00 ? 'text-danger' : 'text-muted'}}">${{$fee}}</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container">
            <a  name="doc_select" 
                href="{{ route('document', ['id' => $id]) }}"
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
                                <div class="row">
                                    @if($copy->bor_reader_id === $reader->reader_id ) 
                                    <form class="m-1" method="POST" action="{{ route('copy.return', 
                                                                [   
                                                                    'id' => $id,
                                                                    'rid' => $reader->reader_id,
                                                                    'did' => $copy->document_id,
                                                                    'coid' => $copy->copy_no,
                                                                    'lid' => $copy->lib_id
                                                                ]
                                                            ) }}" accept-charset="UTF-8">
                                            @csrf
                                            @method('DELETE')
                                            <input name="_method" type="hidden" value="POST">
                                            <button type= "submit" class="btn btn-outline-warning btn-sm" 
                                            >Return ({{ $copy->borrow_time_left > 1 ? $copy->borrow_time_left.' day left' : $copy->borrow_time_left.' days left' }})
                                            </button>
                                        </form>
                                    @elseif($copy->res_reader_id === $reader->reader_id ) 
                                        <form class="m-1" method="POST" action="{{ route('copy.cancelReservation', 
                                                                [   
                                                                    'id' => $id,
                                                                    'rid' => $reader->reader_id,
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
                    You haven't borrowed or reserved anything.
                </h1>
            @endif
        </div>
@endsection
