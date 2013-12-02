class HaircutPicturesController < ApplicationController
  before_action :set_haircut_picture, only: [:show, :edit, :update, :destroy]

  # GET /haircut_pictures
  # GET /haircut_pictures.json
  def index
    @haircut_pictures = HaircutPicture.all
  end

  # GET /haircut_pictures/1
  # GET /haircut_pictures/1.json
  def show
  end

  # GET /haircut_pictures/new
  def new
    @haircut_picture = HaircutPicture.new
  end

  # GET /haircut_pictures/1/edit
  def edit
  end

  # POST /haircut_pictures
  # POST /haircut_pictures.json
  def create
    @haircut_picture = HaircutPicture.new(haircut_picture_params)

    respond_to do |format|
      if @haircut_picture.save
        format.html { redirect_to @haircut_picture, notice: 'Haircut picture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @haircut_picture }
      else
        format.html { render action: 'new' }
        format.json { render json: @haircut_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haircut_pictures/1
  # PATCH/PUT /haircut_pictures/1.json
  def update
    respond_to do |format|
      if @haircut_picture.update(haircut_picture_params)
        format.html { redirect_to @haircut_picture, notice: 'Haircut picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @haircut_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haircut_pictures/1
  # DELETE /haircut_pictures/1.json
  def destroy
    @haircut_picture.destroy
    respond_to do |format|
      format.html { redirect_to haircut_pictures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haircut_picture
      @haircut_picture = HaircutPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haircut_picture_params
      params.require(:haircut_picture).permit(:haircut_id, :url)
    end
end
