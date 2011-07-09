class AboutController < InheritedResources::Base
  respond_to :html
  actions :index

  def index
    I18n.locale = params[:locale]
    # resource = resource_class.first
    @about = About.first
  end
end
