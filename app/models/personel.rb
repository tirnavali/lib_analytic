class Personel < ApplicationRecord  
  has_many :employments
  has_many :departments, through: :employments
  has_one :journal_doc_analytic, dependent: :nullify
  validates :name, :surname, presence: true
  #accepts_nested_attributes_for :departments
  accepts_nested_attributes_for :employments, allow_destroy: true

  scope :join_department, -> {joins(employments: :department)}
  scope :department_name, ->(name) {join_department.where("department.name = ?", name)}
  scope :nil_employment, ->{ includes(:departments).where(employments: {end_date: nil}) }
  scope :current_department, -> (dep_name) {nil_employment.where("departments.name = ?",dep_name)}

    
  def name_with_initial
    "#{name} - #{surname}"
  end

  def to_s
    "#{name} - #{surname}"
  end

  def self.get_by_department(department_name)
    self.joins(employments: :department)
    # self.employments.order(:start_date).last
    # .department.name
  end

end
