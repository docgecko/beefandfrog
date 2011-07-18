class AvailabilityController < InheritedResources::Base
  respond_to :html
  actions :all
  
  def index
    @apartment = Apartment.find(params[:apartment_id])
    @bookings = Booking.where(apartment_id: params[:apartment_id]).order_by([:start_at, :asc])
  end
  
end