require 'pry'

class CashRegister 
    attr_accessor :discount, :total, :items

    def initialize (discount=0)
        @discount =discount
        @total=0
        @items=[]


    end

    def add_item (title,price,quantity=1)
        # @total = @total+ ((price*(100-@discount)*quantity)/100)
        @total = @total+ (price*quantity)
        i=0
        while i<quantity
            @items<<title
            i+=1
        end


    end

    def apply_discount
        if discount>0
            @total=@total-(@total*(@discount.to_f/100))
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
     end



end


binding.pry

