<?php

namespace App\Http\Controllers;

use App\TimelineEvents;
use Illuminate\Http\Request;

class TimelineEventsController extends Controller
{
    public function findAll() {
        return TimelineEvents::orderBy('event_order','asc')->get();
    }

    public function create(Request $request) {
        $timelineEvent = new TimelineEvents();
        $timelineEvent->year = $request->year;
        $timelineEvent->text = $request->text;
        $timelineEvent->title = $request->title;
        $timelineEvent->color = $request->color;
        $timelineEvent->icon = $request->icon;
        $timelineEvent->event_order = $request->event_order;
        $timelineEvent->save();

        return response()->json($timelineEvent);
    }

    public function update(int $id, Request $request) {
        $timelineEvent = TimelineEvents::find($id);
        $timelineEvent->year = $request->year;
        $timelineEvent->text = $request->text;
        $timelineEvent->title = $request->title;
        $timelineEvent->color = $request->color;
        $timelineEvent->icon = $request->icon;

        $timelineEvent->save();

        return response()->json(['id' => $id]);
    }

    public function updateAll(Request $request) {
        $timelineEvents = $request->all();
        foreach($timelineEvents as $data)
        {
            $timelineEvent = TimelineEvents::find($data['id']);
            $timelineEvent->year = $data['year'];
            $timelineEvent->text = $data['text'];
            $timelineEvent->title = $data['title'];
            $timelineEvent->color = $data['color'];
            $timelineEvent->icon = $data['icon'];
            $timelineEvent->event_order = $data['event_order'];
            $timelineEvent->save();
        }

        return response()->json('The list of timeline events has been successfully updated!');
    }

    public function delete(int $id) {
        $timelineEvent = TimelineEvents::find($id);
        $timelineEvent->delete();

        return response()->json('Timeline Event with id '.$id.' has been deleted successfully!' );
    }
}
