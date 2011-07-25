class ImagesController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index ]
  after_filter :featured_images_check, :only => [ :update, :create ]
  
  respond_to :html
  actions :all, :except => [ :show ]
  
  def index
    @images = Image.order_by([:order_no, :asc])
  end
  
  private
  
    def featured_images_check
      if params[:id].present?
        @current_image = Image.find(params[:id])
        if @current_image.featured == true
          @images = Image.where(featured: true)
          if @images.count > 4
            @image = Image.where(featured: true).last            
            @image.featured = false
            @image.save!
          end
        end
      # else
      #   @current_photo = Photo.where(apartment_id: params[:apartment_id]).last
      #   if @current_photo.featured == true
      #     @photos = Photo.where(apartment_id: params[:apartment_id]).excludes(id: @current_photo.id)
      #     @photos.each do |photo|
      #       photo.featured = false
      #       photo.save!
      #     end
      #   end
      end
    end
  
end
