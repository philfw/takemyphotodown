class TakedownStepsController < ApplicationController

  include Wicked::Wizard
  STEPS = [:start, :name, :confirm]
  prepend_before_filter :set_steps

  def show
    @steps_model ||= Takedown.find(params[:takedown_id])
    if step == :start
    elsif step == :name
    elsif step == :confirm
    end
    render_wizard
  end
  
  def update
    if @steps_model = Takedown.find(params[:takedown_id])
      @steps_model.attributes = params[:takedown]
      if step == :set_class_types
        params[:takedown][:securities_attributes].each do |k,hash|
          if security = @steps_model.securities.detect {|security| security.id == hash[:id].to_i }
            security.date_type_confirmed = Date.today if hash[:is_type_confirmed]
          end
        end
      elsif step == :set_class_details
        params[:takedown][:securities_attributes].each do |k,hash|
          if security = @steps_model.securities.detect {|security| security.id == hash[:id].to_i }
            security.date_detail_confirmed = Date.today if hash[:is_detail_confirmed]
          end
        end
      elsif step == :confirm_totals
        if params[:takedown][:is_confirmed]
          @steps_model.date_confirmed = Date.today
        end
      end
      unless step == steps.last
        @steps_model.is_confirmed = FALSE
      end
      if step == :initialize
        if @steps_model.file_stores && @steps_model.file_stores.any? { |file_store| file_store.id.blank? }
          upload_hashes = @steps_model.file_stores.map(&:document)
          CapTableWorker.perform_async(@steps_model.id, upload_hashes, opts={})
          redirect_to next_wizard_path
        else
          @steps_model.generate_titles(opts={})
          if params[:commit] == "Save" && @steps_model.save
            redirect_to wizard_path
          else
            render_wizard @steps_model
          end
        end
      elsif (step == steps.last || params[:commit] == "Save") && @steps_model.save
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


end
