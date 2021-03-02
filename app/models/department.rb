class Department < ApplicationRecord
    has_many :departments
    has_many :personels, through: :departments

    def name_with_initial
      "#{name}"
    end
end
