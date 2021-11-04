class WelcomeController < ApplicationController
  def index
  	
    @referance_analytics_count = ReferenceAnalytic.all.count
    @journal_doc_report_count = JournalDocReport.all.count
    @journal_doc_analytic_count = JournalDocReport.all.count
   end

end
