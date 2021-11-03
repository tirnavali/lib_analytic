class ReferenceAnalytic < ApplicationRecord
  belongs_to :department
  before_validation :set_department

  def set_department
    self.department= Department.find_by_name "Danışma Birimi"
  end
end
