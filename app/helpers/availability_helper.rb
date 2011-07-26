module AvailabilityHelper
  
  def booked_days(bookings)
    @year = Time.now.year
		@month = Time.now.month
		@month_sdate = ("#{@year}/#{@month}/01").to_date
		@booked = Array.new
		count = 0
		bookings.each do |b|
		  cur_date = b.start_at.to_date
			end_date = b.end_at.to_date
			until cur_date > end_date
				@booked[count] = cur_date.to_date
				count += 1
				cur_date += 1
			end
		end
		booked_days = @booked
  end
  
  def checkin_days(bookings)
		@checkin = Array.new
		count = 0
  	bookings.each do |b|
			@checkin[count] = b.start_at.to_date
			count += 1
		end
		checkin_days = @checkin
  end

  def checkout_days(bookings)
		@checkout = Array.new
		count = 0
  	bookings.each do |b|
			@checkout[count] = b.end_at.to_date
			count += 1
		end
		checkout_days = @checkout
  end
  
  def calendar_availability(booked, year, month, week_start)
    booked_dates = booked_days(booked)
    checkin_dates = checkin_days(booked)
    checkout_dates = checkout_days(booked)
    raw calendar(:year => year, :month => month, :first_day_of_week => week_start, :calendar_title => "#{Date::MONTHNAMES[month]}, #{year}") { |d|
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
