class Personel < ApplicationRecord  
  has_one :journal_doc_analytic, dependent: :nullify
  validates :name, :surname, presence: true
  
  def name_with_initial
    "#{name} - #{surname}"
  end
end
