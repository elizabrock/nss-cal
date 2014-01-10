class Year
  def initialize(year)
    @year = year
  end

  def is_leap_year?
    (@year % 400) == 0 || ( (@year % 4) == 0 && (@year % 100) != 0)
  end

  def to_s
    @year.to_s
  end
end
