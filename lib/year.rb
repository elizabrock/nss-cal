class Year
  def initialize(year)
    @year = year
  end

  def is_leap_year?
    if (@year % 4) == 0
      (@year % 100) != 0 || (@year % 400) == 0
    else
      false
    end
  end

  def to_s
    @year.to_s
  end
end
