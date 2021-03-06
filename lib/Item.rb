class Item
    attr_reader :quantity, :ship_price_per_oz
    attr_accessor :name, :price, :description, :weight

    def initialize name, price, weight=0
        @name = name
        @price = price
        @weight = weight
        @quantity = 0
        @description = ""
        # need to make this a @@ variable and adapt everywhere it's calaculated
        # hardcode it in test 
        @ship_price_per_oz = 1.2
    end

    def sell amount
        if @quantity >= amount
            @quantity -= amount
            true
        else
            false
        end
    end

    def stock amount
        @quantity += amount
        true
    end

    def return amount
        @quantity += amount
        true
    end

    def ship_price 
        if @weight >= 0
            @weight * @ship_price_per_oz
            true
        else
            false
        end
    end

end