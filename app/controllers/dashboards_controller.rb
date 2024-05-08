class DashboardsController < ApplicationController
  before_action :set_user, only: %i[mytasks myjobs myprofile]
  def mytasks
    @tasks = @user.tasks
  end

  def myjobs
    @jobs = @user.bookings
  end

  def myprofile
    @user
  end

  def set_user
    @user = current_user
  end
end
