class Personel < ApplicationRecord
  belongs_to :journal_doc_analytic, optional: true
  validates :name, :surname, presence: true
  def name_with_initial
    "#{name} - #{surname}"
  end
end
