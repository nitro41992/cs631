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
        <div class="container mb-3">
            <div class="row">
                <div class="col-sm">
                    <form class="navbar-form" action="{{ route('home.filterId') }}" method="GET" role="search">
                        @csrf
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search by Document Id" name="doc_id_search">
                            <div class="input-group-btn">
                                <button class="btn btn-primary" type="submit">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm">
                    <form class="navbar-form" action="{{ route('home.filterTitle') }}" method="GET" role="search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search by Document Title" name="doc_title_search">
                            <div class="input-group-btn">
                                <button class="btn btn-primary" type="submit">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm">
                    <form class="navbar-form" action="{{ route('home.filterPubName') }}" method="GET" role="search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search by Publisher Name" name="pub_name_search">
                            <div class="input-group-btn">
                                <button class="btn btn-primary" type="submit">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="ccenter mx-auto mb-3">
                    <a href="{{ route('home') }}" class="btn btn-primary">Clear Search</a>
            </div>
        </div>
        <div class="card mb-3">
            <div class="card-body">
                <form class="mt-1" method="POST" action="{{ route('home.insertDocument') }}">
                    @csrf
                    <div class="form-group">
                        <label for="title">Document Name:</label>
                        <input type="text" class="form-control" name="title" id="title" aria-describedby="title"  placeholder="" required>
                    </div>
                    <div class="form-group">
                        <label for="pub_date">Published Date:</label>
                        <input type="date" class="form-control" name="pub_date" id="pub_date" aria-describedby="pub_date"  placeholder="" required>
                    </div>
                    <div class="form-group">
                        <label for="pub_name">Select Publisher</label>
                        <select class="form-control" name='pub_name' id="pub_name">
                        @foreach($obj['publishers'] as $publisher)
                            <option>{{$publisher->publisher_id.' '.$publisher->pub_name}}</option>
                        @endforeach
                        </select>
                        <!-- <div class="mt-2 ml-1">
                            <a href="#">Add New Publisher</a>
                        </div> -->
                    </div>
                    <div class="form-group">
                        <label for="doc_type">Select Publisher</label>
                        <select class="form-control" name='doc_type' id="doc_type">
                            <option>Book</option>
                            <option>Journal Volume</option>
                            <option>Proceedings</option>
                        </select>
                        <!-- <div class="mt-2 ml-1">
                            <a href="#">Add New Publisher</a>
                        </div> -->
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>  
            </div>
        </div>   
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Document Id</th>
                    <th scope="col">Document Title</th>
                    <th scope="col">Date Published</th>
                    <th scope="col">Publisher Name</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>
            @foreach($obj['documents'] as $document)
                <tbody>
                    <tr>
                        <td>{{$document->document_id}}</td>
                        <td>{{$document->title}}</td>
                        <td>{{$document->p_date}}</td>
                        <td>{{$document->pub_name}}</td>
                        <td> 
                            <div class="row">
                                <a name="doc_select" 
                                href="{{ route('adminCopy.index', 
                                    [
                                        'did' => $document->document_id,
                                    ]
                                ) }}" 
                                class="btn btn-primary btn-sm m-1">Select</a>      
                                @if ($document->copy_count == 0)                    
                                <form class="m-1" method="POST" action="{{ route('home.deleteDocument', 
                                                                [   
                                                                    'did' => $document->document_id,
                                                                ]
                                                            ) }}" accept-charset="UTF-8">
                                            @csrf
                                            @method('DELETE')
                                            <input name="_method" type="hidden" value="POST">
                                            <button type= "submit" class="btn btn-danger btn-sm" >Delete</button>
                                </form>
                                @else
                                <a name="doc_select" 
                                        href="#" 
                                        class="btn  m-1 btn-outline-secondary btn-sm disabled" >{{$document->copy_count > 1 ? $document->copy_count.' copies' : $document->copy_count.' copy'}}</a>
                                @endif
                            </div>
                        </td>
                    </tr>
                </tbody>
            @endforeach
        </table>
    </div>
@endsection
