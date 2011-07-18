class BookingsController < InheritedResources::Base
  before_filter :authenticate_user!
  before_filter :find_apartment
  
  belongs_to :apartment
  
  respond_to :html
  actions :all
  
  def index
    @bookings = Booking.where(apartment_id: params[:apartment_id]).order_by([:start_at, :asc])
  end
  
  def create
    create! { apartment_bookings_path(params[:locale], params[:apartment_id]) }
  end
  
  def update    
    update! { apartment_bookings_path(params[:locale], params[:apartment_id]) }
  end
  
  def destroy
    destroy! { apartment_bookings_path(params[:locale], params[:apartment_id]) }
  end
  
  private
    def find_apartment
      @apartment = Apartment.find(params[:apartment_id])
    end
end
