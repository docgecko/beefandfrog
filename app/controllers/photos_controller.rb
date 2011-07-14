class PhotosController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index ]
  
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
    destroy! { collection_url(:locale => params[:locale]) }
  end
end
