class Customer < ApplicationRecord
    def self.search(term)
        if term
          where('ten LIKE ?', "%#{term}%")
        else
          all
        end
      end
end
