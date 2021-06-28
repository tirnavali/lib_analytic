class ReferenceAnalyticsController < ApplicationController
  before_action :set_reference_analytic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  # GET /reference_analytics
  # GET /reference_analytics.json
  def index
    @reference_analytics = ReferenceAnalytic.order(:report_date).page(params[:page])
  end

  # GET /reference_analytics/1
  # GET /reference_analytics/1.json
  def show
  end

  # GET /reference_analytics/new
  def new
    @reference_analytic = ReferenceAnalytic.new
  end

  # GET /reference_analytics/1/edit
  def edit
  end

  # POST /reference_analytics
  # POST /reference_analytics.json
  def create
    @reference_analytic = ReferenceAnalytic.new(reference_analytic_params)

    respond_to do |format|
      if @reference_analytic.save
        format.html { redirect_to @reference_analytic, notice: 'Reference analytic was successfully created.' }
        format.json { render :show, status: :created, location: @reference_analytic }
      else
        format.html { render :new }
        format.json { render json: @reference_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reference_analytics/1
  # PATCH/PUT /reference_analytics/1.json
  def update
    respond_to do |format|
      if @reference_analytic.update(reference_analytic_params)
        format.html { redirect_to @reference_analytic, notice: 'Reference analytic was successfully updated.' }
        format.json { render :show, status: :ok, location: @reference_analytic }
      else
        format.html { render :edit }
        format.json { render json: @reference_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reference_analytics/1
  # DELETE /reference_analytics/1.json
  def destroy
    @reference_analytic.destroy
    respond_to do |format|
      format.html { redirect_to reference_analytics_url, notice: 'Reference analytic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference_analytic
      @reference_analytic = ReferenceAnalytic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reference_analytic_params
      params.require(:reference_analytic).permit(
        :reporter,
        :reporter_job_title,              
        :report_date,
        :user_from_out,
        :user_from_inside,
        :online_patron_outer,
        :online_patron_inner,
        :open_access_sessions,
        :depot_book_usage,
        :depot_journal_usage,
        :depot_newspaper_usage,
        :book_on_loan,
        :book_renew,
        :book_withdraw,
        :book_on_loan_mp,
        :book_on_loan_retired_mp,
        :book_on_loan_inner_patron,
        :book_use_mp,
        :book_use_retired_mp,
        :book_use_inner_patron,
        :microfilm_use_mp,
        :microfilm_use_retired_mp,
        :microfilm_use_inner_patron,
        :microfilm_use_outer_patron,
        :microfilm_income,
        :photocopy_a4_unpaid,
        :photocopy_a3_unpaid,
        :photocopy_a4_paid,
        :photocopy_a3_paid,
        :digitalized_pages,
        :photocopy_income,
        :notes)
    end
end
