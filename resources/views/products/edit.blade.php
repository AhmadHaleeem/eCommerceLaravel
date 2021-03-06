@extends('layouts.app')

@section('content')

    <div class="panel panel-default">
        <div class="panel-heading">Edit a product</div>

        <div class="panel-body">
            <form action="{{ route('products.update', ['id' => $product->id]) }}" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}
                {{ method_field('PUT') }}
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" class="form-control" value="{{$product->name }}">
                </div>

                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="number" name="price" class="form-control" value="{{ $product->price }}">
                </div>

                <div class="form-group">
                    <label for="image">Image</label>
                    <input type="file" name="image" class="form-control">
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea name="description" class="form-control" cols="30" rows="7">{{ $product->description }}</textarea>
                </div>


                <div class="form-group">
                    <div class="text-center">
                        <button class="btn btn-success" type="submit">
                            Save Product
                        </button>
                    </div>

                </div>
            </form>
        </div>
    </div>
@endsection