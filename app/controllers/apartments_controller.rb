class ApartmentsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index, :show ]
  
  respond_to :html
  actions :index, :edit, :update, :show

  def index
    I18n.locale = params[:locale]
    @about = About.first
    @apartments = Apartment.order_by([:name, :desc])
  end
  
  def show
    @photos = Photo.where(apartment_id: params[:id]).order_by([:order_no, :asc])
  end
  
  def update
    update! { edit_resource_url(params[:locale], resource.id) }
  end
end
