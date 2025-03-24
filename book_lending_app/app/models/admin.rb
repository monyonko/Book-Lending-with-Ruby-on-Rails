class Admin < ApplicationRecord
    belongs_to :users

    validates :job_id, :level, presence: true
    validates :level , includes: {in: %w(junior mid senior super)}
end
