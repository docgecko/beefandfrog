module AvailabilityHelper
  
  def calendar_availability(booked_dates, checkin_dates, checkout_dates, year, month, week_start)
    raw calendar(:year => year, :month => month, :first_day_of_week => week_start) { |d|
    	booked_days = booked_dates
    	checkin_days = checkin_dates
    	checkout_days = checkout_dates
    	if booked_days.include?(d) and checkin_days.include?(d) and checkout_days.include?(d)
        [d.mday, {:class => "booked"}]
    	elsif booked_days.include?(d) and checkin_days.include?(d)
        [d.mday, {:class => "checkin booked"}]
      elsif booked_days.include?(d) and checkout_days.include?(d)
        [d.mday, {:class => "checkout booked"}]
      elsif booked_days.include?(d)
        [d.mday, {:class => "booked"}]
      end
    }
  end
end
