<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>{{ session()->has('user_name') ? session()->get('user_name'):"Guest"  }}</title>
  </head>
  <body>
    <div class="container m-2">
        {!! Form::open(['url' => 'saveContact','enctype'=>'multipart/form-data']) !!}
        @php
            echo Form::email("email_id", $value = null, $attributes = ['class'=>'form-control']);
            echo Form::file("avtar", $attributes = ['class'=>'form-control']);
            echo Form::submit('Click Me!', $attributes = ['class'=>'btn btn-primary']);

        @endphp 

        {!! Form::token() !!}
        {!! Form::close() !!}
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>