class JournalDocReportsController < ApplicationController
  before_action :set_journal_doc_report, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  # GET /journal_doc_reports
  # GET /journal_doc_reports.json
  def index
    @journal_doc_reports = JournalDocReport.order(:report_date).page(params[:page])
  end

  # GET /journal_doc_reports/1
  # GET /journal_doc_reports/1.json
  def show
=begin
    @personel = Personel
    personel_ids = Array.new
    analytics = @journal_doc_report.journal_doc_analytics
    analytics.each do |analytic| 
       personel_ids << analytic.personel_id     
    end
    @personels = Personel.find(personel_ids) 
    =HEY
=end
  end

  # GET /journal_doc_reports/new
  def new    
    @journal_doc_report = JournalDocReport.new
    @journal_doc_report.journal_doc_analytics.build
    # personel_count = Personel.all.count
    # if personel_count > 0
    #   personel_count.times do |counter|
    #     @journal_doc_report.journal_doc_analytics.build({new_entry:  counter, personel_id: Personel.all[counter].id}) 
    #   end
    #end
  end

  # GET /journal_doc_reports/1/edit
  def edit
    #analytics = @journal_doc_report.journal_doc_analytics
    #analytics.each do |analytic|

    #end
    # personel_count.times do |counter|
    #   @journal_doc_report.journal_doc_analytics.build({new_entry:  counter, personel_id: Personel.all[counter].id}) 
    # end
  end

  # POST /journal_doc_reports
  # POST /journal_doc_reports.json
  def create
    @journal_doc_report = JournalDocReport.new(journal_doc_report_params)
    #puts "Personel id is : " + @journal_doc_report.journal_doc_analytics.find(2).personel

    respond_to do |format|
      if @journal_doc_report.save
        format.html { redirect_to @journal_doc_report, notice: 'Journal doc report was successfully created.' }
        format.json { render :show, status: :created, location: @journal_doc_report }
      else
        format.html { render :new }
        format.json { render json: @journal_doc_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journal_doc_reports/1
  # PATCH/PUT /journal_doc_reports/1.json
  def update
    respond_to do |format|
      if @journal_doc_report.update(journal_doc_report_params)
        format.html { redirect_to @journal_doc_report, notice: 'Journal doc report was successfully updated.' }
        format.json { render :show, status: :ok, location: @journal_doc_report }
      else
        format.html { render :edit }
        format.json { render json: @journal_doc_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journal_doc_reports/1
  # DELETE /journal_doc_reports/1.json
  def destroy
    @journal_doc_report.destroy
    respond_to do |format|
      format.html { redirect_to journal_doc_reports_url, notice: 'Journal doc report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal_doc_report
      @journal_doc_report = JournalDocReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def journal_doc_report_params
#TODO Add relative model parameters to here
      params.require(:journal_doc_report).permit(:journal_count, :document_count, :unique_subjects_given, :unique_author_given, :author_given, :journal_doc_analytic_id, :reporter, :report_date,
        journal_doc_analytics_attributes: [:id, :reporter, :report_date, :new_entry, :updated_entry, :new_author, :new_subject, :personel_id, :_destroy])
    end
end
