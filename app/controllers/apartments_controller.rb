class ApartmentsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index, :show ]
  
  respond_to :html
  actions :index, :edit, :update, :show

  def index
    I18n.locale = params[:locale]
    @about = About.first
    @apartments = Apartment.order_by([:key_name, :asc])
  end
  
  def update
    update! { apartment_path(params[:locale], resource.id) }
  end
end
