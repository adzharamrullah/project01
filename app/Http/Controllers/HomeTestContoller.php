<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Contact;

class HomeTestContoller extends Controller
{
    public function index()
    {
        $contact = Contact::all();
        return $contact;
    }
}
