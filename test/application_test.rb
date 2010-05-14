require 'test_helper'

class ApplicationTest < Test::Unit::TestCase
  def test_root
    get '/'
    assert last_response.ok?
  end
end