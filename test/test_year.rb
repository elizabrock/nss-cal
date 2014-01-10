require "minitest/autorun"
require_relative "../lib/year"

class TestYear < MiniTest::Unit::TestCase

  def test_is_leap_year_regular
    assert !Year.new(2013).is_leap_year?
  end

  def test_is_leap_year_leapyear
    assert Year.new(2012).is_leap_year?
  end

  def test_is_leap_year_another_leapyear
    assert Year.new(2016).is_leap_year?
  end

  def test_is_leap_year_century_leapyear
    assert !Year.new(1900).is_leap_year?
  end

  def test_is_leap_year_quadcentury_leapyear
    assert Year.new(1600).is_leap_year?
  end
end
