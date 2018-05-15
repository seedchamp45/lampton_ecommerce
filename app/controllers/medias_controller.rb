class MediasController < ApplicationController

 def index
  @medias = Media.order('created_at')
 end

 #New action for creating a new photo
 def new
  @medias = Media.new
 end

 #Create action ensures that submitted photo gets created if it meets the requirements
 def create
  @medias = Media.new(params.require(:photo).permit(:title, :image, :description))
  puts "==========> go to this function"
  puts params[:photo][:title]
  puts params[:photo][:description]
  puts params[:photo][:image]
  if @medias.save
   flash[:notice] = "Successfully added new photo!"
   redirect_to "/photos"
  else
   flash[:alert] = "Error adding new photo!"
   render :new
  end
 end

 private

 #Permitted parameters when creating a photo. This is used for security reasons.
 def photo_params
  params.require(:photo).permit(:title, :image, :description)
 end
end
