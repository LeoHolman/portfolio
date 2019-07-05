class Skill < ApplicationRecord
    has_many :experiences
    has_and_belongs_to_many :projects
    has_and_belongs_to_many :skill_sets
end
