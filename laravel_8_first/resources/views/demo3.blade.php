<h1>{{ $name }}</h1>
<h1>{{ $id ?? 0}}</h1><br>
{{ $html_h2 }}<br>
{!! $html_h2 !!}<br>

@if($id=='')
No id<br>
@elseif($id==0)
Zero id<br>
@else 
is number<br>
@endif

@unless ($name=='Bhushan')
Wron Name <br>
@endunless
@isset ($id)
id set  <br>
@endisset
if started<br>
@for($i=1; $i < 11; $i++)
    <h3>{{$i}}</h3>
@endfor
while started<br>
@php $j=0; @endphp
@while($j < 10)
    <h3>{{$j}}</h3>
@php $j++; @endphp
@endwhile
foreach started<br>
@php $arr = [1,2,3,4,5] @endphp {{-- same for string --}}
@foreach ($arr as $item)
    {{$item}}
@endforeach
<br>break and continue <br>
@for ($i = 0; $i < 10; $i++)
    @if ($i==5)
        {{-- @continue --}}
        @break
    @endif
    {{ $i }}    
@endfor