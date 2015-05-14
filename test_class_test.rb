require 'minitest/autorun'
require_relative 'test_class'

class TestTestClass < MiniTest::Unit::TestCase 
  def setup
    @test = TestClass.new
  end

  def test_output
    # There are two assertions because assert_output calls assert twice.  
    assert_output(/hey/) { @test.output1} # 2 assertions 
	assert_output(stdout = 'hey') { @test.output2} # 1 assertion
  end   
end 