require 'minitest/autorun'
class TestSum < MiniTest::Test
  def test_sum
    assert_equal 25, odd_sum(10)
  end
  def test_substraction
    assert_equal 1, odd_sum(1)
  end
end

def odd_sum(num)
  (0..num).inject { |mem, var| var.odd? ? mem += var : mem }
end