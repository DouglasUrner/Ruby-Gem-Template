require 'minitest/autorun'
require_relative '../lib/GEM'

class GEMTest < Minitest::Test
  def test_GEM_constructor
    assert_instance_of GEM, GEM.new()
  end
end
