class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @tasks = Task.all[0..11]
  end

end
