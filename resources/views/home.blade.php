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
                <form method="POST" action="{{ route('home.insertDocument') }}">
                    @csrf
                    <div class="form-group">
                        <label for="InputDocument">Document Name</label>
                        <input type="text" name="doc_name" class="form-control" id="InputDocument"  placeholder="Enter Document Name">
                    </div>
                    <div class="form-group">
                        <label for="InputPublisher">Publisher Name</label>
                        <input type="text" name="pub_name" class="form-control" id="InputPublisher"  placeholder="Enter Publisher Name">
                    </div>
                    <div class="form-group">
                        <label for="InputPublisherDate">Publisher Date</label>
                        <input type="date" name="pub_date"  class="form-control" id="InputPublisherDate"  placeholder="Enter Published Date">
                    </div>
                    <div class="form-group">
                        <label for="InputPublisherAddress">Publisher Address</label>
                        <input type="text" name="pub_loc"  class="form-control" id="InputPublisherAddress"  placeholder="Enter Publisher Address">
                    </div>
                    <input name="_method" type="hidden" value="POST">
                    <button type="submit" class="btn btn-primary">Add Document</button>
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
                        <td> <a name="doc_select" 
                                href="{{ route('adminCopy.index', 
                                    [
                                        'did' => $document->document_id,
                                    ]
                                ) }}" 
                                class="btn btn-primary btn-sm">Select</a></td>
                    </tr>
                </tbody>
            @endforeach
        </table>
    </div>
@endsection
