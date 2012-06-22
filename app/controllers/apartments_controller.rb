class ApartmentsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index, :show ]
  
  respond_to :html
  actions :index, :edit, :update, :show

  def index
    I18n.locale = params[:locale]
    @about = About.first
    @apartments = Apartment.order_by([:order_no, :asc])
  end
  
  def show
    @photos = Photo.where(apartment_id: params[:id]).order_by([:order_no, :asc])
    @apartment = Apartment.find(params[:id])
    @json = @apartment.to_gmaps4rails do |apartment, marker|
      marker.json :lat => apartment.latitude, :lng => apartment.longitude
    end
  end
  
  def update
    update! { edit_resource_url(params[:locale], resource.id) }
  end
end
