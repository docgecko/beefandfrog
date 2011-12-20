class PhotosController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index ]
  after_filter :featured_photo_check, :only => [ :update, :create ]
  
  respond_to :html
  actions :all, :except => [ :show ]
  
  belongs_to :apartment
  
  def index
    @apartment = Apartment.find(params[:apartment_id])
    @photos = resource_class.where(apartment_id: params[:apartment_id]).order_by([:order_no, :asc])
  end

  def create
    create! { collection_url(:locale => params[:locale]) }
  end
  
  def update    
    update! { collection_url(:locale => params[:locale]) }
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    @photos = Photo.where(apartment_id: params[:apartment_id], featured: true)
    if @photos.nil?
      @photo = Photo.where(apartment_id: params[:apartment_id]).first
      @photo.featured = true
      @photo.save!
    end
    redirect_to apartment_photos_path(params[:locale], params[:apartment_id])
  end
  
  
  protected
  
    def featured_photo_check
      if params[:id].present?
        @current_photo = Photo.find(params[:id])
        if @current_photo.featured == true
          @photos = Photo.where(apartment_id: params[:apartment_id]).excludes(id: params[:id])
          @photos.each do |photo|
            photo.featured = false
            photo.save!
          end
        end
      else
        @current_photo = Photo.where(apartment_id: params[:apartment_id]).last
        if @current_photo.featured == true
          @photos = Photo.where(apartment_id: params[:apartment_id]).excludes(id: @current_photo.id)
          @photos.each do |photo|
            photo.featured = false
            photo.save!
          end
        end
      end
    end
    
end
