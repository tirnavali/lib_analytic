class JournalDocReport < ApplicationRecord
  has_many :journal_doc_analytics
  has_many :personels, through: :journal_doc_analytics
  accepts_nested_attributes_for :journal_doc_analytics
end
