class TakedownsController < ApplicationController
  before_action :set_takedown, only: [:show, :edit, :update, :destroy]

  # GET /takedowns
  # GET /takedowns.json
  def index
    @takedowns = Takedown.all
  end

  # GET /takedowns/1
  # GET /takedowns/1.json
  def show
  end

  # GET /takedowns/new
  def new
    @takedown = Takedown.new
  end

  # GET /takedowns/1/edit
  def edit
  end

  # POST /takedowns
  # POST /takedowns.json
  def create
    @takedown = Takedown.new(takedown_params)
    @takedown.notice_date = Date.today


    respond_to do |format|
      if @takedown.save
        format.html { redirect_to takedown_takedown_steps_url(@takedown), notice: 'Takedown was successfully created.' }
        format.json { render action: 'show', status: :created, location: @takedown }
      else
        format.html { render action: 'new' }
        format.json { render json: @takedown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /takedowns/1
  # PATCH/PUT /takedowns/1.json
  def update
    respond_to do |format|
      if @takedown.update(takedown_params)
        format.html { redirect_to @takedown, notice: 'Takedown was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @takedown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takedowns/1
  # DELETE /takedowns/1.json
  def destroy
    @takedown.destroy
    respond_to do |format|
      format.html { redirect_to takedowns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_takedown
      @takedown = Takedown.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def takedown_params
      params.require(:takedown).permit(:notice_date, :offending_website_names, :first_name, :middle_initial, :last_name, :offending_urls, :destination_emails, :photograph_descriptions, :mailing_address1, :mailing_address2, :mailing_city, :mailing_state, :mailing_zip, :home_phone_number, :cell_phone_number, :email_address, :electronically_signed_datetime, :images_confirmed, :as_guest, :mark_for_trash, :is_signed, :photograph_names, :affirmation_good_faith, :sending_method_of_photograph, image_uploads_attributes: [ :image, :takedown_id, :title, :description, :mark_for_trash, :selfie, :sending_method_of_photograph, :offending_title, :offending_url, :offending_website_name ])
    end
end
