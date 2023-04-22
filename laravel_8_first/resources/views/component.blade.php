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
        @csrf
            @php
                $marks = 1;
            @endphp
            <x-forminput type="number" name="marks" label="Enter Marks" :mark="$marks"/>
            <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
