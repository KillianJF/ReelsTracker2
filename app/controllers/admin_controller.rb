class AdminController < ApplicationController
  def admin
    @trends = Trend.all
  end
end
