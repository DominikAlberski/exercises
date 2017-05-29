require 'minitest/autorun'
class TestSum < MiniTest::Test
	def test_check_if_given_fingers_code_is_valid
    assert_equal(false, finger_code_valid?(''))
    assert_equal(false, finger_code_valid?('00000000000'))
    assert_equal(false, finger_code_valid?('1010010000'))
    assert_equal(false, finger_code_valid?('1101011111'))
    assert_equal(false, finger_code_valid?('1111110111'))
    assert_equal(false, finger_code_valid?('1111110001'))
    assert_equal(false, finger_code_valid?('1111111011'))
	end

  def test_chceck_if_returned_valu_is_valid
    assert_equal(73, finger_count("0011101110"))
    assert_equal(55, finger_count("0000110000"))
    assert_equal(37, finger_count("0111011100"))
  end
end

def finger_code_valid?(finger_code)
  return false if finger_code.size != 10
  return false unless left_hand_valid?(finger_code)
  return false unless right_hand_valid?(finger_code)
end

def left_hand_valid?(finger_code)
  left = finger_code.split('').map { |e| e.to_i }[0..4]
  left[0..2].each do |e|
    if e == 1 && left[1..3].include?(0)
      return false
    end
  end
end

def right_hand_valid?(finger_code)
  right = finger_code.split('').map { |e| e.to_i }[5..9]
  right[2..4].each do |e|
    if e == 1 && right[1..4].include?(0)
      return false
    end
  end
end

def left_hand_count(finger_code)
 
end

def finger_count(finger_code)
  return 'Invalid' unless finger_code_valid?(finger_code)


end