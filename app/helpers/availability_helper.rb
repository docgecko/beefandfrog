module AvailabilityHelper
  
  def calendar_availability(booked_dates, year, month, week_start)
    raw calendar(:year => year, :month => month, :first_day_of_week => week_start) { |d|
    	booked_days = booked_dates
    	if booked_days.include?(d)
        [d.mday, {:class => "booked"}]
      end
    }
  end
end
