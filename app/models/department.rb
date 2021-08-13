class Department < ApplicationRecord
    has_many :employments
    has_many :personels, through: :employments
    has_one :reference_analytics
    has_one :acquisition_report
    has_one :catalog_report
    has_one :journal_doc_report
    

    validates_presence_of :name

    def name_with_initial
      "#{name}"
    end

    def to_s
      "#{name}"
    end
end
