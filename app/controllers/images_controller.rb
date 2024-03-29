class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
    @images = Image.all.order(id: :desc)
  end

  # GET /images/1
  # GET /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
  def create
    # restrict image uploads.
    if Image.order(id: :desc).offset(50).limit(1).any? && Image.order(id: :desc).offset(50).limit(1).first.created_at > Time.zone.now.beginning_of_month
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Reached image upload limitation this month.' }
        format.json { render :index, status: :ok, location: root_path }
      end
      return
    end

    @image = Image.new(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to image_path(@image.slug), notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: image_path(@image.slug) }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to image_path(@image.slug), notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: image_path(@image.slug) }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find_by(slug: params[:slug])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.fetch(:image, {}).permit(%i[file])
    end
end
