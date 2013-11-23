class GirlsController < ApplicationController
  def index
    @q = Girl.search(params[:q])
    @girls = @q.result(distinct: true)
    render :json => { 'resultCount' => @girls.count, 'results' => @girls }
  end
end
