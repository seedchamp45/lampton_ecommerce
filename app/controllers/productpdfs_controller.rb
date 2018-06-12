class ProductpdfsController < ApplicationController
  before_action :set_productpdf, only: [:show, :edit, :update, :destroy]

  # GET /productpdfs
  # GET /productpdfs.json
  def index
    @productpdfs = Productpdf.all
  end

  # GET /productpdfs/1
  # GET /productpdfs/1.json
  def show
     send_data(@productpdf.file_contents,
              type: @productpdf.content_type,
              filename: @productpdf.filename)
  end

  # GET /productpdfs/new
  def new
    @productpdf = Productpdf.new
    @id = params[:id]
  end

  # GET /productpdfs/1/edit
  def edit
  end

  # POST /productpdfs
  # POST /productpdfs.json
  def create
    @productpdf = Productpdf.new(productpdf_params)

    respond_to do |format|
      if @productpdf.save
        format.html { redirect_to @productpdf, notice: 'Productpdf was successfully created.' }
        format.json { render :show, status: :created, location: @productpdf }
      else
        format.html { render :new }
        format.json { render json: @productpdf.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /productpdfs/1
  # PATCH/PUT /productpdfs/1.json
  def update
    respond_to do |format|
      if @productpdf.update(productpdf_params)
        format.html { redirect_to @productpdf, notice: 'Productpdf was successfully updated.' }
        format.json { render :show, status: :ok, location: @productpdf }
      else
        format.html { render :edit }
        format.json { render json: @productpdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productpdfs/1
  # DELETE /productpdfs/1.json
  def destroy
    @productpdf.destroy
    respond_to do |format|
      format.html { redirect_to productpdfs_url, notice: 'Productpdf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productpdf
      @productpdf = Productpdf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productpdf_params
      params.require(:productpdf).permit(:file, :title, :status, :productid, :topics)
    end
end
