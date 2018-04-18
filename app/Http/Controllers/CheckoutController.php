<?php

namespace App\Http\Controllers;


use Cart;
use Mail;
use Session;
use Stripe\Charge;
use Illuminate\Http\Request;
use Stripe\Stripe;
class CheckoutController extends Controller
{
    public function index() {
        if (Cart::content()->count() == 0) {
            Session::flash('info', 'Your cart is still empty, do some shopping..');
            return redirect()->back();
        }
        return view('checkout');
    }

    public function pay() {

        Stripe::setApiKey("sk_test_4ZWeZ6Nt3X7N7e2a10XZt01O");

        $token = $_POST['stripeToken'];
//        dd(\request()->all());
        // Charge the user's card:
        $charge = Charge::create([
            "amount" => Cart::total() * 100,
            "currency" => "eur",
            "description" => "Practice to learn selling",
            "source" => $token,
        ]);
//        dd('your card was charged successfully..');
        Session::flash('success', 'Purchase succssfull, wait for our email..');
        Cart::destroy();

        Mail::to(\request()->stripeEmail)->send(new \App\Mail\PurchaseSuccssful);
        return redirect('/');
    }
}
