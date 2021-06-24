class JournalDocAnalyticsController < ApplicationController
  before_action :set_journal_doc_analytic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  #before_action :get_all_person_list, only: [:edit, :new]

  # GET /journal_doc_analytics
  # GET /journal_doc_analytics.json
  def index
    @journal_doc_analytics = JournalDocAnalytic.all
  end

  # GET /journal_doc_analytics/1
  # GET /journal_doc_analytics/1.json
  def show
  end

  # GET /journal_doc_analytics/new
  def new
    @journal_doc_analytic = JournalDocAnalytic.new
    @personel = Personel
  end

  # GET /journal_doc_analytics/1/edit
  def edit
  end

  # POST /journal_doc_analytics
  # POST /journal_doc_analytics.json
  def create
    @journal_doc_analytic = JournalDocAnalytic.new(journal_doc_analytic_params)

    respond_to do |format|
      if @journal_doc_analytic.save
        format.html { redirect_to @journal_doc_analytic, notice: 'Journal doc analytic was successfully created.' }
        format.json { render :show, status: :created, location: @journal_doc_analytic }
      else
        format.html { render :new }
        format.json { render json: @journal_doc_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journal_doc_analytics/1
  # PATCH/PUT /journal_doc_analytics/1.json
  def update
    respond_to do |format|
      if @journal_doc_analytic.update(journal_doc_analytic_params)
        format.html { redirect_to @journal_doc_analytic, notice: 'Journal doc analytic was successfully updated.' }
        format.json { render :show, status: :ok, location: @journal_doc_analytic }
      else
        format.html { render :edit }
        format.json { render json: @journal_doc_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journal_doc_analytics/1
  # DELETE /journal_doc_analytics/1.json
  def destroy
    @journal_doc_analytic.destroy
    respond_to do |format|
      format.html { redirect_to journal_doc_analytics_url, notice: 'Journal doc analytic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal_doc_analytic
      @journal_doc_analytic = JournalDocAnalytic.find(params[:id])
    end

    def get_all_person_list
      @person_list = Personel.all
    end

    # Only allow a list of trusted parameters through.
    def journal_doc_analytic_params
      params.require(:journal_doc_analytic).permit(:reporter, :report_date, :new_entry, :updated_entry, :new_author, :new_subject, :personel_id)
    end
end
