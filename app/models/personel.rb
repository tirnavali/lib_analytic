class Personel < ApplicationRecord  
  has_many :employments
  has_many :departments, through: :employments
  has_one :journal_doc_analytic, dependent: :nullify
  validates :name, :surname, presence: true
  #accepts_nested_attributes_for :departments
  accepts_nested_attributes_for :employments, allow_destroy: true
    
  def name_with_initial
    "#{name} - #{surname}"
  end
end
