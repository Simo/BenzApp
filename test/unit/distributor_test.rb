require 'test_helper'

class DistributorTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Distributor.new.valid?
  end
end
