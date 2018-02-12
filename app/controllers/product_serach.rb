def index
  respond_to do |format|
    format.html
    format.json { @product =  Spree::Product.search(params[:term]) }
  end
end