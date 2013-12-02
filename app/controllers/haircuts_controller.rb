class HaircutsController < ApplicationController
  before_action :set_haircut, only: [:show, :edit, :update, :destroy]

  # GET /haircuts
  # GET /haircuts.json
  def index
    @haircuts = Haircut.all
  end

  # GET /haircuts/1
  # GET /haircuts/1.json
  def show
  end

  # GET /haircuts/new
  def new
    @haircut = Haircut.new
  end

  # GET /haircuts/1/edit
  def edit
  end

  # POST /haircuts
  # POST /haircuts.json
  def create
    @haircut = Haircut.new(haircut_params)

    respond_to do |format|
      if @haircut.save
        format.html { redirect_to @haircut, notice: 'Haircut was successfully created.' }
        format.json { render action: 'show', status: :created, location: @haircut }
      else
        format.html { render action: 'new' }
        format.json { render json: @haircut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haircuts/1
  # PATCH/PUT /haircuts/1.json
  def update
    respond_to do |format|
      if @haircut.update(haircut_params)
        format.html { redirect_to @haircut, notice: 'Haircut was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @haircut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haircuts/1
  # DELETE /haircuts/1.json
  def destroy
    @haircut.destroy
    respond_to do |format|
      format.html { redirect_to haircuts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haircut
      @haircut = Haircut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haircut_params
      params.require(:haircut).permit(:barber_id, :title, :view_count, :like_count)
    end
end
