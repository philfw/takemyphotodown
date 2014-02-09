class ImageUploadsController < ApplicationController
  before_action :set_image_upload, only: [:show, :edit, :update, :destroy]

  # GET /image_uploads
  # GET /image_uploads.json
  def index
    @image_uploads = ImageUpload.all
  end

  # GET /image_uploads/1
  # GET /image_uploads/1.json
  def show
  end

  # GET /image_uploads/new
  def new
    @image_upload = ImageUpload.new
  end

  # GET /image_uploads/1/edit
  def edit
  end

  # POST /image_uploads
  # POST /image_uploads.json
  def create
    @image_upload = ImageUpload.new(image_upload_params)

    respond_to do |format|
      if @image_upload.save
        format.html { redirect_to @image_upload, notice: 'Image upload was successfully created.' }
        format.json { render action: 'show', status: :created, location: @image_upload }
      else
        format.html { render action: 'new' }
        format.json { render json: @image_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_uploads/1
  # PATCH/PUT /image_uploads/1.json
  def update
    respond_to do |format|
      if @image_upload.update(image_upload_params)
        format.html { redirect_to @image_upload, notice: 'Image upload was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @image_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_uploads/1
  # DELETE /image_uploads/1.json
  def destroy
    @image_upload.destroy
    respond_to do |format|
      format.html { redirect_to begin :back rescue takedown_takedown_step_path(@image_upload.takedown_id, "check_images") end }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_upload
      @image_upload = ImageUpload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_upload_params
      params.require(:image_upload).permit(:user_id, :takedown_id, :image, :mark_for_trash, :title, :description, :selfie, :sending_method_of_photograph, :offending_title, :offending_url, :offending_website_name)
    end
end
