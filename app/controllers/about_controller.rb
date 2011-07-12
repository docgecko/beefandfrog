class AboutController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index ]
  
  respond_to :html
  actions :index, :edit, :update

  def index
    I18n.locale = params[:locale]
    @about = About.first
  end
end
