class DraftPack < ApplicationRecord
    belongs_to :league
    belongs_to :team
    has_many :players

end
