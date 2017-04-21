class CalculationsController < ApplicationController
def flex_square
@norm_number=params[:the_number]
@sqrd_number=@norm_number.to_i**2
  render("calculations/flex_square.html.erb")
end

def flex_squarert
  @norm_number=params[:the_number]
  @sqrt_number=Math.sqrt(@norm_number.to_i)
    render("calculations/flex_squareroot.html.erb")
end
    def flex_payments
      @interest=params[:interest].to_f/10000
      @years=params[:year].to_f
      @principle=params[:principle].to_f
      @payment=@interest*@principle/(1-(1+@principle)**(-@years))
  render("calculations/flex_payment.html.erb")
end
end
