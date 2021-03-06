class ApplicationController < ActionController::Base
  protect_from_forgery
  helper CalendarHelper
  
  before_filter :set_locale

  private
    def set_locale
      # if params[:locale] is nil then I18n.default_locale will be used
      I18n.locale = params[:locale]
    end
end
