class JournalDocAnalytic < ApplicationRecord
    belongs_to :journal_doc_report
    has_one :personel
end
