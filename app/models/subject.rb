class Subject < ApplicationRecord

has_many :users
has_many :tutor_subjects
end
