class MembershipsController < ApplicationController
  def create
    @membership = Membership.new(membership_params)
    @membership.user_id = current_user.id
    @membership.save
    respond_with(@membership)
  end
end
