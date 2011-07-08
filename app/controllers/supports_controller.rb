class SupportsController < ApplicationController
  layout 'application'

  def new
    # id is required to deal with form
    @support = Support.new(:id => 1)
  end

  def create
    @support = Support.new(params[:support])
    if @support.save
      redirect_to(root_url, :notice => "Thank you for your contact!")
    else
      render :new
    end
  end
end
