<?php

namespace App\Http\Controllers;

use App\Product;
use Cart;
use Illuminate\Http\Request;
use Session;
class ShoppingController extends Controller
{
    public function add_to_cart() {
        $pdt = Product::find(\request()->pdt_id);

        $cartItem = Cart::add([
           'id' => $pdt->id,
           'name' => $pdt->name,
           'qty' => \request('qty'),
           'price' => $pdt->price
        ]);
        Cart::associate($cartItem->rowId, 'App\Product');
        Session::flash('success', 'Product added to the basket..');
        return redirect()->route('cart');
    }

    public function cart() {
//        Cart::destroy();
        return view('cart');
    }

    public function delete_cart($id) {
        Cart::remove($id);
        Session::flash('success', 'The item has been deleted successfully...');
        return redirect()->back();
    }

    public function increase($id, $qty) {
        Cart::update($id, $qty + 1);
        Session::flash('success', 'Product quantity increased..');
        return redirect()->back();
    }

    public function decrease($id, $qty) {
        Cart::update($id, $qty - 1);
        Session::flash('success', 'Product quantity decreased..');
        return redirect()->back();
    }

    public function rapid_add($id) {
        $pdt = Product::find($id);

        $cartItem = Cart::add([
            'id' => $pdt->id,
            'name' => $pdt->name,
            'qty' => 1,
            'price' => $pdt->price
        ]);
        Cart::associate($cartItem->rowId, 'App\Product');
        Session::flash('success', 'Product added to the basket..');
        return redirect()->route('cart');
    }
}
