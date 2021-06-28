class CatalogReportsController < ApplicationController
  before_action :set_catalog_report, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
#  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /catalog_reports
  def index
    @catalog_reports = CatalogReport.order(:report_date).page(params[:page])
  end

  # GET /catalog_reports/1
  def show
  end

  # GET /catalog_reports/new
  def new
    @catalog_report = CatalogReport.new
    @catalog_report.catalog_analytics.build    
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
      render 'edit'
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

     # Only allow a trusted parameter "white list" through.
    def catalog_report_params
      params.require(:catalog_report).permit(
        :report_date, 
        :reporter, 
        :reporter_title, 
        :notes,
      catalog_analytics_attributes: [
          :id, 
          :new_entry, 
          :duplicate_entry, 
          :subject_entry,
          :tagged_pubs,
          :secured_pubs,
          :scanned_books,
          :scanned_images,
          :refactored_records,
          :personel_id, 
          :_destroy]
        )
    end
end
