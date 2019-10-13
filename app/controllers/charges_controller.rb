class ChargesController < ApplicationController
  def new
    if params.has_key? :id
      @membership = Membership.find(params[:id])
    else
      @membership = Membership.create
    end
  end

  def create
    membership = Membership.find(params[:user_id])
    binding.pry
    user = Stripe::Customer.create(
      email: params[:email],
      source: get_token(params),#params['stripeToken'],
      description: "Member: #{params[:email]}"
    )
    binding.pry
    charge = Stripe::Charge.create(
      user: user.id,
      amount: 200 * 100,
      currency: 'usd',
      description: "Purchase of #{membership.title}"
    )
    binding.pry
    if charge[:paid]
      redirect_to root_path, notice: "Well done, you are moving up in life!"
    else
      redirect_to root_path, notice: "I guess you'll always be a loser"
    end
  end

  private

  def get_token(params)
    Rails.env.test? ? StripeMock.create_test_helper.generate_card_token : params[:stripeToken]
  end
end