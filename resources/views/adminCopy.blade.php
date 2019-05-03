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
    <div class="container">
        <a name="doc_select" href="{{ route('home') }}" class="btn btn-primary btn-sm">Back
        </a>
        <div class="card mt-3 mb-3">
            <div class="card-body">
                <form class="mt-1" method="POST" action="{{ route('adminCopy.insertCopy') }}">
                    @csrf
                    <div class="form-group mb-2">
                        <label for="copy_no">Copy Number:</label>
                        <input type="text" class="form-control-plaintext ml-3 font-weight-bold" name="copy_no"
                            id="copy_no" value="{{$obj['max_copy'] != null ? (int)$obj['max_copy']->max + 1 : 1}}">
                        <input type="hidden" class="form-control-plaintext ml-3 font-weight-bold" name="document_id"
                            id="document_id" value="{{$obj['did'] != null ? $obj['did'] : null}}">
                    </div>
                    <div class="form-group">
                        <label for="br_name">Select Branch</label>
                        <select class="form-control" name='br_name' id="br_name">
                            @foreach($obj['branches'] as $branch)
                            <option>{{$branch->lib_id.' '.$branch->l_name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="br_pos">Position:</label>
                        <input type="text" class="form-control" name="br_pos" id="br_pos" aria-describedby="pub_pos"
                            placeholder="" maxlength="6" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
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
                    <th scope="col">Position</th>
                    <th scope="col">Actions</th>

                </tr>
            </thead>
            @foreach($obj['copies'] as $copy)
            <tbody>
                <tr>
                    <td>{{$copy->copy_no}}</td>
                    <td>{{$copy->l_name}}</td>
                    <td>{{$copy->l_location}}</td>
                    <td>{{$copy->position}}</td>
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
                                <button type="submit" class="btn btn-outline-warning btn-sm">Cancel Reservation</button>
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
                                <input name="_method" type="hidden" value="POST">
                                <button type="submit" class="btn btn-outline-warning btn-sm">Return</button>
                            </form>
                            @else
                            <a name="doc_select" href="#"
                                class="btn  m-1 btn-outline-secondary btn-sm disabled">Available</a>
                            <form class="m-1" method="POST" action="{{ route('adminCopy.delete', 
                                                            [   
                                                                'did' => $copy->document_id,
                                                                'coid' => $copy->copy_no,
                                                                'lid' => $copy->lib_id
                                                            ]
                                                        ) }}" accept-charset="UTF-8">
                                @csrf
                                @method('DELETE')
                                <input name="_method" type="hidden" value="POST">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
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