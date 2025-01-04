class UsersController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  before_action :resume_session, only: %i[ new ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_url, alert: "Try again later." }

  def new
    redirect_to root_path if authenticated?
  end

  def create
    @user = User.new(params.permit(:email_address, :password))

    if @user.save
      start_new_session_for @user
      redirect_to after_authentication_url
    else
      redirect_to new_session_path, alert: "Try another email address or password."
    end
  end

  def destroy
    terminate_session
    flash.clear
    redirect_to new_session_path, notice: "Signed out."
  end
end
