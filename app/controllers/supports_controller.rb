class SupportsController < ApplicationController
  layout 'application'
  
  before_filter :find_editable_text, :only => [ :new, :create ]

  def new
    # id is required to deal with form
    @support = Support.new(:id => 1)
    @apartments = Apartment.all
  end

  def create
    @support = Support.new(params[:support])
    if @support.save
      redirect_to about_index_path(I18n.t(:language, :scope => [:general])), :notice => I18n.t(:thank_you, :scope => [:contact])
    else
      render :new
    end
  end
  
  private
  
    def find_editable_text
      @about = About.first
    end
end
