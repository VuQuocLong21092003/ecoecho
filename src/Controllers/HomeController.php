<?php

namespace App\Controllers;

use App\Controller;
use App\Models\Journal;

class HomeController extends Controller
{
    public function index()
    {

        $this->render('index');
    }
}