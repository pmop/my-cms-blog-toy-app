class CommentAreasController < ApplicationController
  before_action :set_comment_area, only: [:show, :edit, :update, :destroy]

  # GET /comment_areas
  # GET /comment_areas.json
  def index
    @comment_areas = CommentArea.all
  end

  # GET /comment_areas/1
  # GET /comment_areas/1.json
  def show
  end

  # GET /comment_areas/new
  def new
    @comment_area = CommentArea.new
  end

  # GET /comment_areas/1/edit
  def edit
  end

  # POST /comment_areas
  # POST /comment_areas.json
  def create
    @comment_area = CommentArea.new(comment_area_params)

    respond_to do |format|
      if @comment_area.save
        format.html { redirect_to @comment_area, notice: 'Comment area was successfully created.' }
        format.json { render :show, status: :created, location: @comment_area }
      else
        format.html { render :new }
        format.json { render json: @comment_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_areas/1
  # PATCH/PUT /comment_areas/1.json
  def update
    respond_to do |format|
      if @comment_area.update(comment_area_params)
        format.html { redirect_to @comment_area, notice: 'Comment area was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_area }
      else
        format.html { render :edit }
        format.json { render json: @comment_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_areas/1
  # DELETE /comment_areas/1.json
  def destroy
    @comment_area.destroy
    respond_to do |format|
      format.html { redirect_to comment_areas_url, notice: 'Comment area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_area
      @comment_area = CommentArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_area_params
      params.require(:comment_area).permit(:comments_id, :post_id)
    end
end
