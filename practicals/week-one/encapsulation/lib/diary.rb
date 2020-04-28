# Task: SecretDiary
#  - lock
#  - unlock
#  - add_entry
#  - get_entries

#Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

#When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

#When the user calls `lock` again they throw errors again.

class SecretDiary
  attr_reader :locked

  def initialize
    @locked = true
  end

  def unlock
    @locked = false
    "diary is unlocked"
  end

  def lock
    @locked = true
  end
end

class Editor
  def add_entries(diary)
    raise "diary is locked" if diary.locked == true
  end

  def get_entries(diary)
    raise "diary is locked" if diary.locked == true
  end
end
