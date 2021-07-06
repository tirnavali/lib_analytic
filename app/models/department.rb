class Department < ApplicationRecord
    has_many :employments
    has_many :personels, through: :employments

    validates_presence_of :name

    def name_with_initial
      "#{name}"
    end
end
