class Meeting < ApplicationRecord
   validates :name, presence: true, length: { maximum: 50 }
   validates :start_page, presence: true, numericality: :only_integer
   validates :end_page, presence: true
   validates :content, presence: true, length: { maximum: 254 }
end
