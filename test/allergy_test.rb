require "minitest/autorun"
require "minitest/pride"
require "./lib/allergy"

class AllergyTest < Minitest::Test

  def test_it_can_score_one_allergy
    allergy = Allergy.new

    actual = allergy.convert(2)
    expected = ["peanuts"]

    assert_equal expected, actual
  end

  def test_it_can_score_more_than_one_allergy
    allergy = Allergy.new

    actual = allergy.convert(34)
    expected = ["peanuts", "chocolate"]

    assert_equal expected, actual
  end

end

