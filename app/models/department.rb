class Department < ApplicationRecord
    has_many :departments
    has_many :personels, through: :departments
end
