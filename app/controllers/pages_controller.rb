class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @tasks = Task.all
  end

  def show
    @tasks = @list = Page.find(params[:id])
  end
end
