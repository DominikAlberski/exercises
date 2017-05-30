require 'minitest/autorun'
class TestSum < MiniTest::Test
  def test_sum
    assert_equal 25, odd_sum(10)
    assert_equal 1, odd_sum(1)
  end
end

def odd_sum(num)
  # (0..num).inject { |mem, var| var.odd? ? mem += var : mem }
  # rozwiązanie 1 linijkowe wydaje się wolniejsze:
  num.even? ? ((1 + num - 1) / 2 ) * ((num + 1) / 2) : ((1 + num) / 2 ) * ((num + 2) / 2)
  # num.even? ? num -= 1 : num
  # ((1 + num) / 2 ) * ((num + 2) / 2)
end



def simple_b
  start = Time.now
  yield
  return Time.now - start
end

puts simple_b { odd_sum(100) }
puts simple_b { odd_sum(100_000) }
puts simple_b { odd_sum(100_000_000) }