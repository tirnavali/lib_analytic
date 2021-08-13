class ReferenceAnalytic < ApplicationRecord
    belongs_to :department
    before_save :set_department

  def set_department
    self.department= Department.find_by_name "Kataloglama Birimi"
  end
end
