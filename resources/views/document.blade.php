
@extends('layouts.app')

@section('content')
    <div class = "container">
        <table class="table table-striped">
        <thead>
            <tr>
                <td>Document Title</td>
            </tr>
        </thead>
        @foreach($documents as $document)
        <tbody>
            <tr>
                <td>{{$document->title}}</td>
            </tr>
        </tbody>
        @endforeach
    </div>
    <div class = "container">
        <?php echo $documents->render(); ?>
    </div>
@endsection
