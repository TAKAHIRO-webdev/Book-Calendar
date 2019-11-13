class Meeting < ApplicationRecord
   validates :name, presence: true
   validates :start_page, presence: true, numericality: :only_integer
   validates :end_page, presence: true
   validates :content, presence: true
end
