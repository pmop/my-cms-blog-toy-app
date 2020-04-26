class HomeController < ApplicationController
  def index
    # TODO optimize queries
    @posts = Post.all
  end
end
