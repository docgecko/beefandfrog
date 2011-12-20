class AboutController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index ]
  
  respond_to :html
  actions :index, :edit, :update

  def index
    I18n.locale = params[:locale]
    @about = About.first     
    @images = Image.where(featured: true).order_by([:order_no, :asc])
    @portraits = Portrait.where(featured: true).order_by([:order_no, :asc])
  end
end
