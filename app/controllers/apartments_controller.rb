class ApartmentsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index, :show ]
  
  respond_to :html
  actions :index

  def index
    I18n.locale = params[:locale]
    @about = About.first
    @apartments = Apartment.all
  end
  
  def show
    @apartment = Apartment.find(:id)
  end
end
