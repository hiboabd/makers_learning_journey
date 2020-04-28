require 'exercise_1'

describe Note do

  describe ' #display' do
    it 'displays the title and body of the note' do
      formatter_double = double :formatter
      my_note = Note.new("my title", "my body", formatter_double)
      allow(formatter_double).to receive(:format).and_return("Title: my title\nmy body")
      expect(my_note.display).to eq "Title: my title\nmy body"
    end
  end
end

describe NoteFormatter do

  describe '#format' do
    it 'displayes the title and body of note' do
      note_double = double :note, title: "my title", body: "my body"
      expect(subject.format(note_double)).to eq "Title: my title\nmy body"
    end
  end
end
