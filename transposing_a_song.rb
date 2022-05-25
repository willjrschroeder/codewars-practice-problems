'''

You are a composer who just wrote an awesome piece of music. Now it\'s time 
to present it to a band that will perform your piece, but there\'s a problem! 
The singers vocal range doesn\'t stretch as your piece requires, and you have 
to transpose the whole piece.

Your task
Given a list of notes (represented as strings) and an interval, output a 
list of transposed notes in sharp notation.

Input notes may be represented both in flat and sharp notations (more on 
that below).

For this kata, assume that input is always valid and the song is at least 
1 note long.

Assume that interval is an integer between -12 and 12.

Short intro to musical notation
Transposing a single note means shifting its value by a certain interval.

The notes are as following:

A, A#, B, C, C#, D, D#, E, F, F#, G, G#.
This is using sharp notation, where \'#\' after a note means that it is one 
step higher than the note. So A# is one step higher than A.

An alternative to sharp notation is the flat notation:

A, Bb, B, C, Db, D, Eb, E, F, Gb, G, Ab.
The \'b\' after a note means that it is one step lower than the note.

Problem:
Given a note (in either sharp or flat notation) and an interval (-12 : 12), return the transposed note in sharp notation

Examples
[\'G\'] -> 5 steps -> [\'C\']
[\'Db\'] -> -4 steps -> [\'A#\']
[\'E\', \'F\'] -> 1 step -> [\'F\', \'F#\']

Edge cases: When you reach the end of the array, loop back around 

Algorithm:

SET constant arrays of flat and sharp scales

Create a method that takes in an input array and a step integer, and returns an output array
	SET a transposed_array
	
	Iterate through the input array
		Find and store the relative position of the indexed note
		
		Add the step integer to the relative position to find the transposed position
			Handle if transposed position is not between -12 and 12

		Add the note at the transposed position to the transposed array

	Return the transposed array

'''

SHARP_SCALE = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
FLAT_SCALE = ["A", "Bb", "B", "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab"]

def transpose(song, interval)
  transposed_song = []
  
  song.each do |note|
    note_position = SHARP_SCALE.index(note)
    note_position = FLAT_SCALE.index(note) if !note_position # stores the index from the flat scale if the note is not in the sharp scale
    
    transposed_position = note_position + interval
    if !(-12..11).include?(transposed_position)
      transposed_position = transposed_position - 12
    end
    
    transposed_song << SHARP_SCALE[transposed_position]
  end
  
  transposed_song
end