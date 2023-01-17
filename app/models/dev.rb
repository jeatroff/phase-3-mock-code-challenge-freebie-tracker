class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        if (Freebie.find_by item_name: item_name) == nil
            return false
        else
            return true
        end
    end

    /doesn't work/
    def give_away(dev, freebie)
        if freebie.dev_id == self.id
            freebie.dev_id = dev.id
        end
    end
end
