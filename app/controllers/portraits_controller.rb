class PortraitsController < InheritedResources::Base
 before_filter :authenticate_user!, :except => [ :index ]
 after_filter :featured_portraits_check, :only => [ :update, :create ]
 
 respond_to :html
 actions :all, :except => [ :show ]
 
 def index
   @portraits = Portrait.order_by([:order_no, :asc])
 end
 
 private
 
   def featured_portraits_check
     if params[:id].present?
       @current_portrait = Portrait.find(params[:id])
       if @current_portrait.featured == true
         @portraits = Portrait.where(featured: true)
         if @portraits.count > 2
           @portrait = Portrait.where(featured: true).last            
           @portrait.featured = false
           @portrait.save!
         end
       end
     end
   end
end
