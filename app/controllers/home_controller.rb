class HomeController < ApplicationController
  # before_action :authenticate_user!, except: [:index]

  def index
    @q = User.ransack(params[:q])
    if params[:q] && params[:q][:platform_eq].present? && params[:q][:games_id_eq].present?
      @users = @q.result(distinct: true)
    end
  end

  def search
    index
    render :index
  end

end
