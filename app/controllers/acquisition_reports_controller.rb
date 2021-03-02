class AcquisitionReportsController < ApplicationController
    def new
      #FIXME initial pub type değerler atansın yada formda göster
      @acquisition_report = AcquisitionReport.new
      3.times { @acquisition_report.acquisition_analytics.build }
    end

    def edit
      @acquisition_report = AcquisitionReport.find(params[:id])     
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
      @acquisition_report = AcquisitionReport.find(params[:id])
      if @acquisition_report.update(acquisition_report_params)
        redirect_to @acquisition_report
      else
        render 'edit'
      end
    end

    def destroy
      @acquisition_report = AcquisitionReport.find(params[:id])
      #@acquisition_report.acquisition_analytics.destroy
      @acquisition_report.destroy
      redirect_to acquisition_reports_path
    end

    def show
        @acquisition_report = AcquisitionReport.find(params[:id])
    end
    
    def index
      @acquisition_reports = AcquisitionReport.all
    end

    private
      def acquisition_report_params
        #TODO Diğer anayltics attributes eklenecek. Şu an sadece iki tane var.
        params.require(:acquisition_report).permit(:reporter_identity, :job_title, :posted_books, :refactored_items, :note, :date, 
          acquisition_analytics_attributes: [:id, :pub_arrived_as_supply, :pub_arrived_as_gift, :pub_type_id, :_destroy],
          pub_type_attributes: [:id, :pub_type_name])
      end
end
