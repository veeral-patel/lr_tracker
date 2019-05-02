class Engagement < ApplicationRecord
    has_many :systems

    validates :code, :presence => true
    validates :client, :presence => true

    def to_s
        code
    end

end
