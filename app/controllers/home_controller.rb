# frozen_string_literal: true

class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    redirect_to projects_url if user_signed_in?
  end
end
