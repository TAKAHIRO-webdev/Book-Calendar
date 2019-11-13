class Meeting < ApplicationRecord
   validates :name, presence: true
   validates :start_page, presence: true
   validates :end_page, presence: true
   validates :content, presence: true
end
