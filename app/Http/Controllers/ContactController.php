<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{
    public function sendContactForm(Request $request){

    	Mail::send('mail.send', [
    	'name'		=> $request->name,
    	'email'		=> $request->email,
    	'subject'	=> $request->subject,
    	'body'	=> $request->message
    	], function($mail) use($request){
    		$mail->from($request->email, $request->name);
    		$mail->to('pintiwilli11@gmail.com')->subject('Te enviaron un mensaje de Pets');
    	}

    );
       	return redirect()->back()->with('info', 'El mensaje se ha enviado correctamente');

    } 

    public function showContactForm(){
    	return view('contact');
    }
}
