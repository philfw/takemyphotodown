class TakedownStepsController < ApplicationController

  include Wicked::Wizard
  STEPS = [:identify_offender, :add_offending_images, :check_images, :confirm_and_send]
  prepend_before_filter :set_steps

  def show
    @steps_model ||= Takedown.find(params[:takedown_id])
    if step == :identify_offender
    elsif step == :add_offending_images
    elsif step == :check_images
    end
    render_wizard
  end
  
  def update
    if @steps_model = Takedown.find(params[:takedown_id])
      @steps_model.attributes = takedown_params

      if step == :identify_offender
      elsif step == :confirm_and_send
        if params[:takedown][:is_signed]
          @steps_model.electronically_signed_datetime = DateTime.now

        end
      end
      unless step == steps.last
        # @steps_model.is_signed = FALSE
      end
      if (step == steps.last || params[:commit] == "Save") && @steps_model.save
        if (step == steps.last && params[:commit] != "Save")
          redirect_to take_return_to({takedown_id: @steps_model.id}) || takedown_url(@steps_model.id, @steps_model)
        else
          redirect_to wizard_path
        end
      else
        render_wizard @steps_model
      end
    end
  end

  private
  def set_steps
    self.steps = STEPS
  end
  
  def takedown_params
    params.require(:takedown).permit(:as_guest, :cell_phone_number, :destination_emails, :electronically_signed_datetime, :email_address, :first_name, :home_phone_number, :images_confirmed, :last_name, :mailing_address1, :mailing_address2, :mailing_city, :mailing_state, :mailing_zip, :mark_for_destruction, :middle_initial, :notice_date, :offending_urls, :offending_website_names, :photograph_descriptions, :photograph_names, :affirmation_good_faith, :sending_method_of_photograph, image_uploads_attributes: [ :image, :takedown_id, :title, :description, :mark_for_trash, :selfie, :sending_method_of_photograph, :offending_title, :offending_url, :offending_website_name ])
  end

end