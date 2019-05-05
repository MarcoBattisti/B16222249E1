<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Note;
use App\NoteContent;

class NoteController extends Controller
{
    public function findAll() {

        $notes =  Note::all();

        foreach ($notes as $note) {
            $note->contents = NoteContent::where('note_id','=', $note->id)->get();
        }

        return $notes;
    }

    public function create(Request $request) {
        $note = new Note();
        $note->type = $request->type;
        $note->title = $request->title;
        $note->save();

        $this->saveNotesContent($note->id, $request);
        return response()->json(['id' => $note->id]);
    }

    public function update(int $id, Request $request) {
        $note = Note::find($id);
        $note->type = $request->type;
        $note->title = $request->title;
        $note->save();

        $this->saveNotesContent($note->id, $request);
        return response()->json(['id' => $id]);
    }

    public function saveNotesContent($note_id, Request $request) {
        NoteContent::where('note_id','=', $note_id)->delete();

        $note_contents = NoteContent::hydrate($request->contents);
        foreach($note_contents as $content) {
            $tempContent = new NoteContent();
            $tempContent->note_id = $note_id;
            $tempContent->value = $content->value;
            $tempContent->done = $this->booleanToNumber($content->done);
            $tempContent->save();
        }
    }

    public function booleanToNumber($value) {
        $result = 0;
        if($value != null && ($value == 1 || $value == true)) {
            $result = 1;
        }
        return $result;
    }

    public function delete(int $id) {
        $note = Note::find($id);
        NoteContent::where('note_id','=', $note->id)->delete();
        $note->delete();
        return response()->json('Note with id '.$id.' has been deleted successfully!' );
    }
}
