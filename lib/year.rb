require_relative 'month'

class Year
  STANDARD_YEAR_WIDTH = 72
  STANDARD_MONTH_HEIGHT = 11

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
    lines = [ "",
              "",
              @year.to_s.center(STANDARD_YEAR_WIDTH).rstrip,
              "" ]
    (1..12).each_slice(3) do |months|
      lines << ""

      month1 = Month.new(months[0], @year).to_s.split("\n")
      month2 = Month.new(months[1], @year).to_s.split("\n")
      month3 = Month.new(months[2], @year).to_s.split("\n")

      [month1, month2, month3].each do |month|
        month.delete_if{ |line| line.empty? }
      end

      # Make sure that the first month is tall enough when we zip the arrays
      if month1.length < STANDARD_MONTH_HEIGHT
        month1 << nil
      end

      full_quarter = month1.zip(month2, month3)
      full_quarter.each do |line_strings|
        if line_strings.all?{ |ostensible_string| ostensible_string.nil? }
          lines << ""
        else
          full_lines = line_strings.map do |month_line|
            month_title_pattern = /\s*(\w+)\s(\d{4})\s*/
            if month_line =~ month_title_pattern
              "#{$1}".center(Month::STANDARD_MONTH_WIDTH - 1) + " "
            else
              month_line.ljust(Month::STANDARD_MONTH_WIDTH, " ")
            end
          end

          ljust_length = (2 + Month::STANDARD_MONTH_WIDTH) * 2
          justified_line = full_lines.join("     ").ljust(ljust_length," ")
          if justified_line.match(/([^\d\s]+\s+)+$/)
            justified_line.rstrip!
          end

          lines << justified_line
        end
      end
    end
    lines.join("\n")
  end
end
