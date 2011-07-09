class ApartmentsController < InheritedResources::Base
  respond_to :html
  actions :index

  def index
    I18n.locale = params[:locale]
    @about = About.first
    @apartments = Apartment.all
  end
end
