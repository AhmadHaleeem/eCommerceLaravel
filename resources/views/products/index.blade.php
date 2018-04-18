@extends('layouts.app')

@section('content')

    <div class="panel panel-default">
        <div class="panel-heading">Products</div>

        <div class="panel-body">
            <table class="table table-responsive table-hover">
                <thead>
                <th>Name</th>
                <th>Price</th>
                <th>Edit</th>
                <th>Delete</th>
                </thead>
                <tbody>
                @foreach($products as $product)
                    <tr>
                        <td>{{ $product->name }}</td>
                        <td>{{ $product->price }}</td>
                        <td>
                            <a href="{{ route('products.edit', ['id' => $product->id]) }}" class="btn btn-xs btn-primary">Edit</a>
                        </td>
                        <td>
                            <form action="{{ route('products.destroy', ['id' => $product->id]) }}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('DELETE') }}
                                <button  class="btn btn-xs btn-danger" type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>

            {{ $products->links() }}
        </div>
    </div>

@endsection
