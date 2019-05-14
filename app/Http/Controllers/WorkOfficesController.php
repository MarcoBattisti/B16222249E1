<?php

namespace App\Http\Controllers;

use App\WorkOffices;
use Illuminate\Http\Request;

class WorkOfficesController extends Controller
{
    public function getAll(){
        return WorkOffices::all();
    }

    public function save(Request $request) {
        $workOffice = WorkOffices::find($request->id);
        if ($workOffice == null) {
            $workOffice = new WorkOffices();
        }
        $workOffice->id = $request->id;
        $workOffice->street = $request->street;
        $workOffice->number = $request->number;
        $workOffice->city = $request->city;
        $workOffice->province = $request->province;
        $workOffice->post_code = $request->post_code;

        $workOffice->save();

        return response()->json(['id' => $workOffice->id]);
    }

    public function delete(int $id) {
        $workOffice = WorkOffices::find($id);
        $workOffice->delete();
        return response()->json('Work office with id '.$id.' has been deleted successfully!' );
    }
}
