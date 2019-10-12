class PaymentsController < ApplicationController
  def create
    membership = Membership.find params[:membership_id]

    user = Stripe::User.create(
      email: params[:email]
      source: params['stripeToken']
      description: "Member: #{params[:email]}"
    )

    payment = Stripe::Payment.create(
      user: user.id,
      amount: 200 * 100,
      currency: 'usd',
      description: "Purchase of #{membership.title}"
    )

    if payment[:paid]
      redirect_to root_path, notice: "Well done, you are moving up in life!"
    else
      redirect_to root_path, notice: "I guess you'll always be a loser"
    end
  end

  def new
    @membership = Membership.find(params[:id])
  end
end