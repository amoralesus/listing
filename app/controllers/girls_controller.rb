class GirlsController < ApplicationController
  def index
    render :json => Girl.all
  end
end
