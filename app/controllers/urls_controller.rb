class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def show
    @url = Url.find(params[:id])
  end
  
  def create
    @url = Url.new(url_params)
      if @url.save
        redirect_to @url
      else
        render 'new'
      end
  end
  
  def forward
    @url = Url.find_by(short_url: params[:short_url])
    if @url.nil?
      render 'forward'
    else
      @count = @url.counter + 1
      @url.update_attribute(:counter, @count)
      redirect_to @url.original_url
    end
  end
  
  def index
    @urls = Url.paginate(page: params[:page])
  end
  
private

  def url_params
    params.require(:url).permit(:short_url, :original_url)
  end
end
