class PaymentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: (@product.price).to_i, # amount in cents, again
        currency: "usd",
        source: token,
        description: params[:stripeEmail]
      )
        rescue Stripe::CardError => e
          # The card has been declined
          body = e.json_body
          err = body[:error]
          flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
        end
    end
end
