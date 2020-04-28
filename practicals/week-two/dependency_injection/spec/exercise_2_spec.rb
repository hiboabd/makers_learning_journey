require 'exercise_2'

describe Diary do

  context 'when adding entry' do
    describe '#add' do
      it 'entry is added to entries array' do
        entry_double = double :entry
        entry_class_double = double :entry_class, new: entry_double
        diary = Diary.new(entry_class_double)
        expect{diary.add("my title", "my body")}.to change{diary.entries}.to [entry_double]
      end
    end
  end
end
