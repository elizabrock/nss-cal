require_relative 'zellers_congruence'

class Month
  attr_reader :month
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

  def length
    29
  end

  def name
    MONTH_NAMES[@month]
  end

  def to_s
    lines = ["#{name} #{year}".center(STANDARD_MONTH_WIDTH).rstrip,
             "Su Mo Tu We Th Fr Sa"]

    extra_spaces = ZellersCongruence.calculate(year, month) - 1
    days = ("   " * extra_spaces)
    1.upto(self.length) do |day_of_month|
      days << ( day_of_month.to_s.rjust(2, " ") + " ")
    end
    days.scan(/.{1,#{STANDARD_MONTH_WIDTH + 1}}/m) do |line|
      lines << line.rstrip
    end
    lines.flatten.join("\n")
  end
end
