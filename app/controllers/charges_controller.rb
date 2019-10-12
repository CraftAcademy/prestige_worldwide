class ChargesController < ApplicationController
  def new
    @membership = Membership.find(params[:id])
  end

  def create
    membership = Membership.find params[:membership_id]

    user = Stripe::Customer.create(
      email: params[:email]
      source: params['stripeToken']
      description: "Member: #{params[:email]}"
    )

    charge = Stripe::Charge.create(
      user: user.id,
      amount: 200 * 100,
      currency: 'usd',
      description: "Purchase of #{membership.title}"
    )

    if charge[:paid]
      redirect_to root_path, notice: "Well done, you are moving up in life!"
    else
      redirect_to root_path, notice: "I guess you'll always be a loser"
    end
  end
end