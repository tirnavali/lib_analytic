class AcquisitionReportsController < ApplicationController
  before_action :set_acquisition_report, only: [:show, :edit, :update, :destroy] 
  #before_action :reset_form_size, except: [:edit, :new]

    def new      
#FIXME initial pub type değerler atansın yada formda göster
      @acquisition_report = AcquisitionReport.new     
      @acquisition_report.acquisition_analytics.build
      #build_forms(params[:form_size], true)      
    end

    def edit
      #@acquisition_report = AcquisitionReport.find(params[:id])  
      build_forms(params[:form_size],false)   
    end

    def create
      @acquisition_report = AcquisitionReport.new(acquisition_report_params)
      if @acquisition_report.save 
        redirect_to @acquisition_report
      else
        render 'new'
      end

      # debug için yorumu açın
      #render plain: params[:acquisition_report].inspect        
    end

    def update
      #@acquisition_report = AcquisitionReport.find(params[:id])
      if @acquisition_report.update(acquisition_report_params)
        redirect_to @acquisition_report
      else
        render 'edit'
      end
    end

    def destroy
      #@acquisition_report = AcquisitionReport.find(params[:id])
      #@acquisition_report.acquisition_analytics.destroy
      @acquisition_report.destroy
      redirect_to acquisition_reports_path
    end

    def show
        #@acquisition_report = AcquisitionReport.find(params[:id])
    end
    
    def index
      @acquisition_reports = AcquisitionReport.all
    end

    private
      def acquisition_report_params
        #TODO Diğer anayltics attributes eklenecek. Şu an sadece iki tane var.
        params.require(:acquisition_report).permit(:reporter_identity, :job_title, :posted_books, :refactored_items, :note, :date, 
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

      def set_acquisition_report
        @acquisition_report = AcquisitionReport.find(params[:id])
      end

      def build_forms(size, isNew)
        size = size.to_i
        if size && session[:analytic_form_count] 
          session[:analytic_form_count] += 1
          session[:analytic_form_count].times { @acquisition_report.acquisition_analytics.build }
        elsif size == 1          
          session[:analytic_form_count] = 0   
           
        elsif isNew
          @acquisition_report.acquisition_analytics.build     
          session[:analytic_form_count] = 1 
        end
      end
  
      def reset_form_size
        session.delete(:analytic_form_count)
      end
end
