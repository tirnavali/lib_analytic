class JournalDocAnalytic < ApplicationRecord
    belongs_to :journal_doc_report # journal_doc_report_id
    belongs_to :personel # personel_id
    #accepts_nested_attributes_for :personel
end
