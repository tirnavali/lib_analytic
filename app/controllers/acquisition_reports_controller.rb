class AcquisitionReportsController < ApplicationController
  before_action :set_acquisition_report, only: [:show, :edit, :update, :destroy] 
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  #before_action :reset_form_size, except: [:edit, :new]

    def index
      @acquisition_reports = AcquisitionReport.order(:date).page(params[:page])
    end

    def show
        @acquisition_analytics_ordered_by_pub_name =  @acquisition_report.acquisition_analytics.includes(:pub_type).order('pub_types.pub_type_name ASC')
    end

    def new    
      @acquisition_report = AcquisitionReport.new     
      @acquisition_report.acquisition_analytics.build
    end

    def edit
    end

    def create
      @acquisition_report = AcquisitionReport.new(acquisition_report_params)

      if @acquisition_report.save 
        redirect_to @acquisition_report, notice: "Acqisition report was successfully created."
      else
        render :new
      end
    end

    def update
      if @acquisition_report.update(acquisition_report_params)
        redirect_to @acquisition_report, notice: "Acqisition report was successfully updated."
      else
        render 'edit'
      end
    end

    def destroy
      @acquisition_report.destroy
      redirect_to acquisition_reports_path, notice: "Acqisition report has been deleted."
    end

    private
      def set_acquisition_report
        @acquisition_report = AcquisitionReport.find(params[:id])
      end
      
      def acquisition_report_params
        params.require(:acquisition_report).permit(
          :reporter_identity, 
          :job_title, 
          :posted_books, 
          :refactored_items, 
          :note, 
          :date, 
          acquisition_analytics_attributes: [:id, :pub_arrived_as_supply,
                                                  :pub_arrived_as_gift,
                                                  :pub_bought,
                                                  :pub_saved_as_gift,
                                                  :pub_saved_as_supply,
                                                  :pub_saved_as_old, 
                                                  :pub_type_id, 
                                                  :_destroy],
          pub_type_attributes: [:id, :pub_type_name])
      end
end
