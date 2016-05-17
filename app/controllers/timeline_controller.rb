class TimelineController < ApplicationController

  before_action :check_Sign_in

  def index
  end

  def check_Sign_in
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
  end

end
