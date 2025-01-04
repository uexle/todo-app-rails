class WelcomeController < ApplicationController
  allow_unauthenticated_access only: %i[ index ]
  before_action :resume_session, only: %i[ index ]

  def index
    redirect_to lists_path if authenticated?
  end
end
