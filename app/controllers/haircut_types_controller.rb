class HaircutTypesController < ApplicationController
  before_action :set_haircut_type, only: [:show, :edit, :update, :destroy]

  # GET /haircut_types
  # GET /haircut_types.json
  def index
    @haircut_types = HaircutType.all
  end

  # GET /haircut_types/1
  # GET /haircut_types/1.json
  def show
  end

  # GET /haircut_types/new
  def new
    @haircut_type = HaircutType.new
  end

  # GET /haircut_types/1/edit
  def edit
  end

  # POST /haircut_types
  # POST /haircut_types.json
  def create
    @haircut_type = HaircutType.new(haircut_type_params)

    respond_to do |format|
      if @haircut_type.save
        format.html { redirect_to @haircut_type, notice: 'Haircut type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @haircut_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @haircut_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haircut_types/1
  # PATCH/PUT /haircut_types/1.json
  def update
    respond_to do |format|
      if @haircut_type.update(haircut_type_params)
        format.html { redirect_to @haircut_type, notice: 'Haircut type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @haircut_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haircut_types/1
  # DELETE /haircut_types/1.json
  def destroy
    @haircut_type.destroy
    respond_to do |format|
      format.html { redirect_to haircut_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haircut_type
      @haircut_type = HaircutType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haircut_type_params
      params.require(:haircut_type).permit(:title)
    end
end
