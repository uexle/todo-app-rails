class ApplicationController < ActionController::Base
  before_action :sidebar

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def sidebar
    @sidebarLists = List.all
  end
end
