require "minitest/autorun"
require_relative "../lib/month"

class TestMoreMonths < MiniTest::Unit::TestCase
  def test_translating_month_january
    assert_equal "January", Month.new(1, 2012).name
  end

  def test_translating_month_february
    assert_equal "February", Month.new(2, 2012).name
  end

  def test_translating_month_march
    assert_equal "March", Month.new(3, 2012).name
  end

  def test_translating_month_april
    assert_equal "April", Month.new(4, 2012).name
  end

  def test_translating_month_may
    assert_equal "May", Month.new(5, 2012).name
  end

  def test_translating_month_june
    assert_equal "June", Month.new(6, 2012).name
  end

  def test_translating_month_july
    assert_equal "July", Month.new(7, 2012).name
  end

  def test_translating_month_august
    assert_equal "August", Month.new(8, 2012).name
  end

  def test_translating_month_september
    assert_equal "September", Month.new(9, 2012).name
  end

  def test_translating_month_october
    assert_equal "October", Month.new(10, 2012).name
  end

  def test_translating_month_november
    assert_equal "November", Month.new(11, 2012).name
  end

  def test_translating_month_december
    assert_equal "December", Month.new(12, 2012).name
  end
end
