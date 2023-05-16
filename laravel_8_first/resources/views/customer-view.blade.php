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
    <div class="container">
        <a href="{{url('customer/trash')}}" class="btn btn-primary">Trash</a>
        <table class="table">
            <thead>
                <tr>
                    <th>Sr. No.</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Created_at</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $i=0;
                @endphp
                @foreach ($customers as $customer)
                    
                <tr>
                    <td>{{ ++$i }}</td>
                    <td>{{ $customer->name }}</td>
                    <td>{{ $customer->email }}</td>
                    <td>{{ $customer->address }}</td>
                    <td>{{ $customer->created_at }}</td>
                    {{-- <td><a href="{{url('customer/delete')."/".$customer->id}}"><button class="btn btn-danger">Delete</button></a></td> alternative --}}
                    <td><a href="{{route('customer.delete',['id'=>$customer->id])}}"><button class="btn btn-danger">Trash</button></a></td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <div class="row">
            @php
                echo $customers->links()
            @endphp
            </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>