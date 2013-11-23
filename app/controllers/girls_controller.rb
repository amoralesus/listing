class GirlsController < ApplicationController
  def index
    @q = Girl.search(params[:q])
    @girls = @q.result(distinct: true)
    render :json => { 'resultCount' => @girls.count, 'results' => @girls }
  end

  def avatar
    begin
      @girl = Girl.where(:product_code => params[:product_code]).first
      send_file @girl.avatar_file_path, :disposition => 'inline'
    rescue
      send_file "#{Rails.root}/app/assets/images/avatar.jpg", :disposition => 'inline'
    end
  end
end
