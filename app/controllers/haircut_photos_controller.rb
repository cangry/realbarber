class HaircutPhotosController < ApplicationController
  before_action :set_haircut_photo, only: [:show, :edit, :update, :destroy]

  # GET /haircut_photos
  # GET /haircut_photos.json
  def index
    @haircut_photos = HaircutPhoto.all
  end

  # GET /haircut_photos/1
  # GET /haircut_photos/1.json
  def show
  end

  # GET /haircut_photos/new
  def new
    @haircut_photo = HaircutPhoto.new
  end

  # GET /haircut_photos/1/edit
  def edit
  end

  # POST /haircut_photos
  # POST /haircut_photos.json
  def create
    @haircut_photo = HaircutPhoto.new(haircut_photo_params)

    respond_to do |format|
      if @haircut_photo.save
        format.html { redirect_to @haircut_photo, notice: 'Haircut photo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @haircut_photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @haircut_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haircut_photos/1
  # PATCH/PUT /haircut_photos/1.json
  def update
    respond_to do |format|
      if @haircut_photo.update(haircut_photo_params)
        format.html { redirect_to @haircut_photo, notice: 'Haircut photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @haircut_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haircut_photos/1
  # DELETE /haircut_photos/1.json
  def destroy
    @haircut_photo.destroy
    respond_to do |format|
      format.html { redirect_to haircut_photos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haircut_photo
      @haircut_photo = HaircutPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haircut_photo_params
      params.require(:haircut_photo).permit(:haircut_id, :is_default, :name)
    end
end
