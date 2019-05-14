<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;

class ServiceController extends Controller
{

    public function getAll()
    {
        return Service::orderBy('event_order','asc')->get();
    }

    public function create(Request $request) {
        $service = new Service();
        $service->image = $request->image;
        $service->title = $request->title;
        $service->text = $request->text;
        $service->event_order = $request->event_order;

        $service->save();

        return response()->json(['id' => $service->id]);
    }

    public function update(int $id, Request $request) {
        $service = Service::find($id);
        $service->image = $request->image;
        $service->title = $request->title;
        $service->text = $request->text;
        $service->event_order = $request->event_order;

        $service->save();

        return response()->json(['id' => $id]);
    }

    public function updateAll(Request $request) {
        $services = $request->all();
        foreach($services as $data)
        {
            $service = Service::find($data['id']);
            $service->image = $data['image'];
            $service->title = $data['title'];
            $service->text = $data['text'];
            $service->event_order = $data['event_order'];

            $service->save();
        }

        return response()->json('The list of services has been updated successfully!');
    }

    public function delete(int $id) {
        $service = Service::find($id);
        $service->delete();
        return response()->json('Service with id '.$id.' has been deleted successfully!' );
    }
}