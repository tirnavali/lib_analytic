json.extract! catalog_report, :id, :report_date, :reporter, :reporter_title, :notes, :created_at, :updated_at
json.url catalog_report_url(catalog_report, format: :json)
