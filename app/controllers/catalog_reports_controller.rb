class CatalogReportsController < ApplicationController
  before_action :set_catalog_report, only: [:show, :edit, :update, :destroy]
  before_action :reset_form_size, except: [:edit, :new]
#  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /catalog_reports
  def index
    @catalog_reports = CatalogReport.all
  end

  # GET /catalog_reports/1
  def show
  end

  # GET /catalog_reports/new
  def new
    @catalog_report = CatalogReport.new
    #@catalog_report.catalog_analytics.build

    #build_forms(params[:analytic_form_count])

    # analytic_form_count = params[:analytic_form_count].to_i
    # if params[:analytic_form_count] && session[:analytic_form_count].to_i > 0
    #   session[:analytic_form_count] += 1
    #   session[:analytic_form_count].times { @catalog_report.catalog_analytics.build }
    # else analytic_form_count == 1
    #   session[:analytic_form_count] = 1
    #   @catalog_report.catalog_analytics.build
    # end
  end

  # GET /catalog_reports/1/edit
  def edit
  end

  # POST /catalog_reports
  def create
    @catalog_report = CatalogReport.new(catalog_report_params)

    if @catalog_report.save
      redirect_to @catalog_report, notice: 'Catalog report was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /catalog_reports/1
  def update
    if @catalog_report.update(catalog_report_params)
      redirect_to @catalog_report, notice: 'Catalog report was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /catalog_reports/1
  def destroy
    @catalog_report.destroy
    redirect_to catalog_reports_url, notice: 'Catalog report was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalog_report
      @catalog_report = CatalogReport.find(params[:id])
    end

    def build_forms(size)
      size = size.to_i
      if size && session[:analytic_form_count].to_i > 0
        session[:analytic_form_count] += 1
        session[:analytic_form_count].times { @catalog_report.catalog_analytics.build }
      else size == 1
        session[:analytic_form_count] = 1
        @catalog_report.catalog_analytics.build
      end
    end

    def reset_form_size
      session.delete(:analytic_form_count)
      #puts"#{'#'*20}#SESSİON DELETED"
    end
    
    # Only allow a trusted parameter "white list" through.
    def catalog_report_params
      params.require(:catalog_report).permit(:report_date, :reporter, :reporter_title, :notes,
      catalog_analytics_attributes: [:id, :new_entry, :duplicate_entry, :subject_entry, :personel_id])
    end
end
