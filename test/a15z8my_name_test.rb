require 'test_helper'

class A15z8myNameTest < Minitest::Test
  def setup
    @main = A15z8myName::A15z8myName.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::A15z8myName::VERSION
  end

  def test_bmi
    assert_output(/^Your BMI.*Your Best Weight.*/m) {@main.calcBmi(175,57)}
    assert_output(stdout=nil, /^input your height as cm.*/m) {@main.calcBmi(1.75,57)}
  end
end
