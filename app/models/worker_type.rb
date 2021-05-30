class WorkerType < ApplicationRecord
    has_many :finantial_infos
    def to_s
        name
    end
end
