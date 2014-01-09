class Month
  attr_reader :year

  STANDARD_MONTH_WIDTH = 20
  MONTH_NAMES = { 1 => "January",
                  2 => "February",
                  3 => "March",
                  4 => "April",
                  5 => "May",
                  6 => "June",
                  7 => "July",
                  8 => "August",
                  9 => "September",
                  10 => "October",
                  11 => "November",
                  12 => "December" }

  def initialize(month, year)
    @month = month
    @year = year
  end

  def name
    MONTH_NAMES[@month]
  end

  def to_s
    "#{name} #{year}".center(STANDARD_MONTH_WIDTH).rstrip
  end
end
