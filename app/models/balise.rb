class Balise < ActiveRecord::Base
    attr_accessible :code
    has_many :lieus
    before_save :create_unique_identifier

    def create_unique_identifier
        self.code = rand(36**8).to_s(36)
    end
end
