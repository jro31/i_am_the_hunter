class Job < ApplicationRecord
  belongs_to :user

  validates :company_name, presence: true, length: { minimum: 2 }
end
