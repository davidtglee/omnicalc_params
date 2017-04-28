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
      @interest=params[:interest].to_f/100
      monthlyrate=@interest/1200
      @years=params[:year].to_i
      months=@years*12
      @principle=params[:principle].to_i
      @payment=(monthlyrate*@principle)/(1-(1+monthlyrate)**(-months))
  render("calculations/flex_payment.html.erb")
end
def square_form
  render("calculations/square_form.html.erb")
end

def square


  @user_provided_number= params[:user_input]
  @squared_number= @user_provided_number.to_f ** 2.round(2)
  render("calculations/square.html.erb")
end


def square_root_form
    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_provided_number= params[:user_input]
    @squared_root_number= (Math.sqrt(@user_provided_number.to_f)).round(3)
    render("calculations/square_root.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end


  def payment_form
      render("calculations/payment_form.html.erb")
    end


    def payment
      @apr = params["user_rate"].to_f
      @years = params["user_years"].to_i
      @principal = params["user_principal"].to_f

      @rate=@apr/1200
      payments=@years*12
      @monthly_payment = (@rate*@principal/(1-(1+@rate)**(-payments))).round(2)
      render("calculations/payment.html.erb")
    end


def random_form
  render("calculations/random_form.html.erb")
end


def random
  @minimum = params[:minimum]
  @maximum = params[:maximum]
  @random_number= rand(@minimum.to_f..@maximum.to_f)
  render("calculations/random.html.erb")
end

end
