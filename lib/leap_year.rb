require 'date'

class Date
  def leap_year?
    if year % 100 == 0
      return year % 400 == 0
    end
    year % 4 == 0
  end
end
