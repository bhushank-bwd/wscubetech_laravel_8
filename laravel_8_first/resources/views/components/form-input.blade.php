<div class="mb-3">
    <label for="{{ $name }}" class="form-label">{{ $label }}</label>
    <input type="{{ $type }}" class="form-control" id="{{ $name }}" name="{{ $name }}" aria-describedby="nameHelp" value="{{ $marks }}">
    <div id="nameHelp" class="form-text text-danger">error text</div>
</div>