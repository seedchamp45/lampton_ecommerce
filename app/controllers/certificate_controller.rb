class CertificateController < ApplicationController



   def certificate
    @friend = Friend.new(friend_params)

    if @friend.save
      redirect_to @friend, notice: 'Friend was successfully created.'
     else
       render action: 'new'
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:avatar, :title)
  end
end
