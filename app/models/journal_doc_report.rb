class JournalDocReport < ApplicationRecord
#TODO add deletion constrints to this model. What we do related analytics when delete one report?
  has_many :journal_doc_analytics,  dependent: :destroy
  #validates :personel_id, allow_nil: true
  accepts_nested_attributes_for :journal_doc_analytics, allow_destroy: true
end
