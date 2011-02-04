require 'test_helper'

class BaliseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Balise.new.valid?
  end
end
