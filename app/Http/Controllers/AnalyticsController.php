<?php

namespace App\Http\Controllers;

use Analytics;
use Spatie\Analytics\Period;
use Carbon\Carbon;

class AnalyticsController extends Controller
{
    //retrieve visitors for the current day and the last seven days
    public function usersOnline(){

        $response = Analytics::performQuery(Period::days(7), 'ga:users');

        return collect($response['rows'] ?? [])->map(function (array $pageRow) {
            return [
                'users' => (int) $pageRow[0],
            ];
        });
    }

    //retrieve average time of session duration for the current day and the last seven days
    public function timeAverage(){

        $response = Analytics::performQuery(
            Period::days(7),
            'ga:avgSessionDuration');

        return collect($response['rows'] ?? [])->map(function (array $pageRow) {
            return [
                'average' => gmdate("H:i:s", $pageRow[0]),
            ];
        });
    }

    //retrieve visitors for the current day and the last seven days
    public function fetchVisitors(){

        $response = Analytics::performQuery(
            Period::days(7),
            'ga:users',
            ['dimensions' => 'ga:date']
        );

        return collect($response['rows'] ?? [])->map(function (array $dateRow) {
            return [
                'date' => Carbon::createFromFormat('Ymd', $dateRow[0]),
                'visitors' => $dateRow[1],
            ];
        });
    }
}
