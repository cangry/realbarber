class HaircutTagsController < ApplicationController
  before_action :set_haircut_tag, only: [:show, :edit, :update, :destroy]

  # GET /haircut_tags
  # GET /haircut_tags.json
  def index
    @haircut_tags = HaircutTag.all
  end

  # GET /haircut_tags/1
  # GET /haircut_tags/1.json
  def show
  end

  # GET /haircut_tags/new
  def new
    @haircut_tag = HaircutTag.new
  end

  # GET /haircut_tags/1/edit
  def edit
  end

  # POST /haircut_tags
  # POST /haircut_tags.json
  def create
    @haircut_tag = HaircutTag.new(haircut_tag_params)

    respond_to do |format|
      if @haircut_tag.save
        format.html { redirect_to @haircut_tag, notice: 'Haircut tag was successfully created.' }
        format.json { render action: 'show', status: :created, location: @haircut_tag }
      else
        format.html { render action: 'new' }
        format.json { render json: @haircut_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haircut_tags/1
  # PATCH/PUT /haircut_tags/1.json
  def update
    respond_to do |format|
      if @haircut_tag.update(haircut_tag_params)
        format.html { redirect_to @haircut_tag, notice: 'Haircut tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @haircut_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haircut_tags/1
  # DELETE /haircut_tags/1.json
  def destroy
    @haircut_tag.destroy
    respond_to do |format|
      format.html { redirect_to haircut_tags_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haircut_tag
      @haircut_tag = HaircutTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haircut_tag_params
      params.require(:haircut_tag).permit(:haircut_id, :tag_id)
    end
end
