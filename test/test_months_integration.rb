require "minitest/autorun"

class TestMoreMonths < MiniTest::Unit::TestCase

  def test_12_1799
    output = `ruby cal.rb 12 1799`
    assert_equal "Argument must be for a date between the years 1800 and 3000\n", output
  end

  def test_01_3000
    output = `ruby cal.rb 01 3000`
    assert_equal "Argument must be for a date between the years 1800 and 3000\n", output
  end

  def test_no_arguments
    output = `ruby cal.rb`
    assert_equal "You must provide a month and/or year", output
  end

  def test_02_2012
    output = `ruby cal.rb 02 2012`
    assert_equal `cal 02 2012`, output
  end

  def test_01_2012
    output = `ruby cal.rb 01 2012`
    assert_equal `cal 01 2012`, output
  end

  def test_09_2012
    output = `ruby cal.rb 09 2012`
    assert_equal `cal 09 2012`, output
  end

  def test_02_2015
    output = `ruby cal.rb 01 2015`
    assert_equal `cal 01 2015`, output
  end

  def test_02_1900
    output = `ruby cal.rb 02 1900`
    assert_equal `cal 02 1900`, output
  end
end
