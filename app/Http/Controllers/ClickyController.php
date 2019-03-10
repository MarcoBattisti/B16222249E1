<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;

class ClickyController extends Controller
{
    public function usersOnline(){

        $client = new Client();

        $response = $client->request('GET', env('CLICKY_URL'), [
            'query' => [
                'site_id' => env('CLICKY_SITE_ID'),
                'sitekey' => env('CLICKY_SITE_KEY'),
                'type' => 'visitors-online',
                'output' => 'json'
                ]
        ]);
        return response($response->getBody(), $response->getStatusCode());
    }

    public function timeAverage(){

        $client = new Client();
        $response = $client->request('GET', env('CLICKY_URL'), [
            'query' => [
                'site_id' => env('CLICKY_SITE_ID'),
                'sitekey' => env('CLICKY_SITE_KEY'),
                'type' => 'time-average-pretty',
                'output' => 'json'
                ]
        ]);
        return response($response->getBody(), $response->getStatusCode());
    }
}
