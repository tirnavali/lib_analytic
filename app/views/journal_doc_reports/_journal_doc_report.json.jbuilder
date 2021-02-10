json.extract! journal_doc_report, :id, :journal_count, :document_count, :unique_subjects_given, :unique_author_given, :author_given, :journal_doc_analytic_id, :reporter, :report_date, :created_at, :updated_at
json.url journal_doc_report_url(journal_doc_report, format: :json)
