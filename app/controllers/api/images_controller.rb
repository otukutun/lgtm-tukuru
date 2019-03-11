class API::ImagesController < ApplicationController
  before_action :set_image, only: [:show, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
    @images = Image.all
    if params[:exclude_ids].present?
      @images = @images.where.not(slug: params[:exclude_ids])
    end

    # タイプを指定
    if params[:type].present? && params[:type] == 'random'
      @images = @images.order("RANDOM()")
    else
      @images = @images.order(id: :desc)
    end

    # countは最大で50件
    if params[:count].present? && 0 < params[:count].to_i && params[:count].to_i <= 50
      @images = @images.limit(params[:count])
    elsif params[:count].present? && params[:count].to_i > 50
      @images = @images.limit(50)
    else
      @images = @images.limit(20)
    end
  end

  # GET /images/1
  # GET /images/1.json
  def show
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(image_params)

    if @image.save
      render :show, status: :created, location: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    if @image.update(image_params)
      render :show, status: :ok, location: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.fetch(:image, {})
    end
end
