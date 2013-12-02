class BarberTypesController < ApplicationController
  before_action :set_barber_type, only: [:show, :edit, :update, :destroy]

  # GET /barber_types
  # GET /barber_types.json
  def index
    @barber_types = BarberType.all
  end

  # GET /barber_types/1
  # GET /barber_types/1.json
  def show
  end

  # GET /barber_types/new
  def new
    @barber_type = BarberType.new
  end

  # GET /barber_types/1/edit
  def edit
  end

  # POST /barber_types
  # POST /barber_types.json
  def create
    @barber_type = BarberType.new(barber_type_params)

    respond_to do |format|
      if @barber_type.save
        format.html { redirect_to @barber_type, notice: 'Barber type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barber_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @barber_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barber_types/1
  # PATCH/PUT /barber_types/1.json
  def update
    respond_to do |format|
      if @barber_type.update(barber_type_params)
        format.html { redirect_to @barber_type, notice: 'Barber type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barber_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barber_types/1
  # DELETE /barber_types/1.json
  def destroy
    @barber_type.destroy
    respond_to do |format|
      format.html { redirect_to barber_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barber_type
      @barber_type = BarberType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barber_type_params
      params.require(:barber_type).permit(:barber_id, :type_id)
    end
end
