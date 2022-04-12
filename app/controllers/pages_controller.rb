class PagesController < ApplicationController
   skip_before_action :authenticate_user!, only: :home

  def home
    @show = Show.new
    @shows = Show.all
  end
end
