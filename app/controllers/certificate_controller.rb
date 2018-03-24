class CertificateController < ApplicationController



   def certificate
    
  end

  private

  def friend_params
    params.require(:friend).permit(:avatar, :title)
  end
end
