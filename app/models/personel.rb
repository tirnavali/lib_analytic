class Personel < ApplicationRecord
  #has_one :journal_doc_analytic, optional: true
  has_one :journal_doc_analytic
  validates :name, :surname, presence: true
  def name_with_initial
    "#{name} - #{surname}"
  end
end
