class MergesController < ApplicationController
  before_action :set_merge, only: [:show, :update, :destroy]

  # GET /merges
  def index
    @merges = Merge.all

    render json: @merges
  end

  # GET /merges/1
  def show
    render json: @merge
  end

  # POST /merges
  def create
    @merge = Merge.new(merge_params)

    if @merge.save
      render json: @merge, status: :created, location: @merge
    else
      render json: @merge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /merges/1
  def update
    if @merge.update(merge_params)
      render json: @merge
    else
      render json: @merge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /merges/1
  def destroy
    @merge.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merge
      @merge = Merge.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def merge_params
      params.require(:merge).permit(:category_id, :user_id)
    end
end
