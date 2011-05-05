require 'test_helper'

class SongTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Song.new.valid?
  end
end
