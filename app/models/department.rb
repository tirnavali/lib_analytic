class Department < ApplicationRecord
    has_many :employments
    has_many :personels, through: :employments
    has_many :reference_analytics, dependent: :destroy
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

    def current_employments
      self.employments.where(employments: {end_date: nil}).joins(:personel)
      #self.employments.find_by_end_date(nil)      
    end
   
end
