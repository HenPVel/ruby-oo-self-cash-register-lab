require 'pry'
class CashRegister



        def initialize(discount=0)
            @total=0
            @discount=discount
            @last_total=0
            @basket=[]
        end

    attr_accessor :discount,:price,:quantity,:total,:last_total,:title
    
    def total=(sum)
        @total=sum
    end

    def total
        @total
    end

    def add_item(title,price,quantity=1)
        @title=title
        @total=total+quantity*price
        #binding.pry
        quantity.times do
        @basket << title
        end
        @last_total=price*quantity
    end

    def apply_discount
        @total*=(100-@discount)/100.0

        if @discount==0
             x="There is no discount to apply."

        else 
             x="After the discount, the total comes to $#{@total.to_i}."
         end
    x
    end

    def void_last_transaction
    end

    def items
        @basket
    end

    def void_last_transaction
        @total=@total - @last_total
    end

end