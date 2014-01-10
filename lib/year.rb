class Year
  STANDARD_YEAR_WIDTH = 62

  def initialize(year)
    @year = year
  end

  def self.is_leap_year?(year)
    if (year % 4) == 0
      (year % 100) != 0 || (year % 400) == 0
    else
      false
    end
  end

  def to_i
    @year
  end

  def to_s
    lines = [ @year.to_s.center(STANDARD_YEAR_WIDTH).rstrip,
              "" ]
    lines.join("\n")
    (1..12).each_slice(3) do |months|
      month1 = Month.new(months[0], @year).to_s.split("\n")
      month2 = Month.new(months[1], @year).to_s.split("\n")
      month3 = Month.new(months[2], @year).to_s.split("\n")

      full_quarter = month1.zip(month2, month3)

      full_quarter.each do |line|
        full_line = line.map{ |month_line| (month_line || "").ljust(Month::STANDARD_MONTH_WIDTH) }
        striped_line = full_line.join("  ").rstrip
        if !striped_line.empty?
          lines << striped_line.ljust((2 + Month::STANDARD_MONTH_WIDTH) * 2," ")
        end
      end
      lines << ("  " * (Month::STANDARD_MONTH_WIDTH + 2))
    end
    lines
  end
end
