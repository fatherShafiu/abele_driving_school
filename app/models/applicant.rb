class Applicant < ApplicationRecord
default_scope -> { order(created_at: :desc) }
validates :first_name, presence: true
validates :last_name, presence: true
validates :email, presence: true
validates :phone, presence: true
validates :gender, presence: true
validates :date_of_birth, presence: true

end
