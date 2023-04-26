<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 5 Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

  
<div class="container mt-5">
    <form action="{{url('/register')}}" method="POST">
      @php
      //  echo'<pre>';
      //  print_r($errors->all());
      //  die;
          
      @endphp
        @csrf
            <div class="mb-3">
              <label for="name" class="form-label">Name</label>
              <input type="text" class="form-control" id="name" name="name" aria-describedby="nameHelp" value="{{old('name')}}">
              <div id="nameHelp" class="form-text text-danger">@error('name')
               {{$message}}   
              @enderror</div>
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">Email address</label>
              <input type="text" class="form-control" id="email" name="email" aria-describedby="emailHelp" value="{{old('email')}}">
              <div id="emailHelp" class="form-text text-danger">@error('email')
               {{$message}}   
              @enderror</div>
            </div>
            <div class="mb-3">
              <label for="address" class="form-label">Address</label>
              <textarea class="form-control" id="address" name="address" aria-describedby=""> {{old('address')}}</textarea>
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Password</label>
              <input type="password" class="form-control" id="password" name="password">
              <div id="emailHelp" class="form-text text-danger">@error('password')
               {{$message}}   
              @enderror</div>
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Confirm Password</label>
              <input type="password" class="form-control" id="password" name="confirm_password">
              <div id="emailHelp" class="form-text text-danger">@error('confirm_password')
               {{$message}}   
              @enderror</div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
