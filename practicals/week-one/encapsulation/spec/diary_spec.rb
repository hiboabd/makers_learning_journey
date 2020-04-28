require 'diary'

describe SecretDiary do
  it 'Secret Diary is locked when initialized' do
    expect(subject.locked).to eq true
  end

  it 'Unlocked message returned when unlock is called' do
    expect(subject.unlock).to eq "diary is unlocked"
  end

  it 'Locked variable is false when diary is unlocked' do
    subject.unlock
    expect(subject.locked).to eq false
  end

  it 'Locked method sets locked variable to true' do
    subject.unlock
    subject.lock
    expect(subject.locked).to eq true
  end
end

describe Editor do
  it 'add_entries should throw error when Secret diary is initialized' do
    diary = SecretDiary.new
    expect { subject.add_entries(diary) }.to raise_error("diary is locked")
  end

  it 'get_entries should throw error when Secret diary is initialized' do
    diary = SecretDiary.new
    expect { subject.get_entries(diary) }.to raise_error("diary is locked")
  end

  it 'add_entries should not throw error when Secret diary is unlocked' do
    diary = SecretDiary.new
    diary.unlock
    expect { subject.add_entries(diary) }.not_to raise_error
  end

  it 'get_entries should not throw error when Secret diary is unlocked' do
    diary = SecretDiary.new
    diary.unlock
    expect { subject.get_entries(diary) }.not_to raise_error
  end

  it 'add_entries should throw an error when Secret diary is locked manually' do
    diary = SecretDiary.new
    diary.unlock
    diary.lock
    expect { subject.add_entries(diary) }.to raise_error("diary is locked")
  end

  it 'get_entries should throw an error when Secret diary is locked manually' do
    diary = SecretDiary.new
    diary.unlock
    diary.lock
    expect { subject.get_entries(diary) }.to raise_error("diary is locked")
  end
end
