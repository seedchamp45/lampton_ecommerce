class ContentsController < ApplicationController

	 #Index action, photos gets listed in the order at which they were created
 def index
  @content = Content.order('created_at')
 end

 #New action for creating a new photo
 def new
  @content = Content.new
 end

 #Create action ensures that submitted photo gets created if it meets the requirements
 def create
  @content = Content.new(photo_params)
  if @content.save
   flash[:notice] = "Successfully added new photo!"
   redirect_to '/contents'
  else
   flash[:alert] = "Error adding new photo!"
   render :new
  end
 end

 private

 #Permitted parameters when creating a photo. This is used for security reasons.
 def photo_params
  params.require(:content).permit(:title, :image, :body, :status, :content)
 end


end
