class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def show
    @tasks = Page.find(params[:id])
  end

end
