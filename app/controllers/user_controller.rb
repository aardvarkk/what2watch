require 'open-uri'
require 'rss'

class UserController < ApplicationController
  
  def random
    @uid = params[:id]
    if @uid.present?
      url = "http://rss.imdb.com/user/#{@uid}/watchlist"
      open(url) do |rss|
        @film = RSS::Parser.parse(rss).items.sample
      end
    end
  end

  def random_search
    redirect_to random_result_path(params[:id])
  end

end
