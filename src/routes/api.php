<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get("/healthz", function (Request $request) {
    return ["status" => "ok"];
});
