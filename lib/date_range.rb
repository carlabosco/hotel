require 'time'

class DateRange
  # Check if given date is valid 
  def self.valid_date?(date)
    begin
      Date.parse(date, '%Y-%m-%d')
      true
    rescue => e
      false
    end
  end

  def self.generate_date_range(check_in, check_out)
    (check_in..check_out).select { |d|  valid_date?(d) }
  end

  def self.dates_overlap?(range1, range2)
    range1.last > range2.first && range1.first < range2.last
  end
end