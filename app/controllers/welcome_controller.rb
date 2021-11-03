class WelcomeController < ApplicationController
  def index
  	if @user
  		@name = @user.email
  	else
  		@name = "Unknown Person"
  	end
    @referance_analytics_count = ReferenceAnalytic.all.count
    @journal_doc_report_count = JournalDocReport.all.count
    @journal_doc_analytic_count = JournalDocReport.all
   end

end
