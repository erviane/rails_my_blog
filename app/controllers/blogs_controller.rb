class BlogsController < ApplicationController 
  def index  	
  end

  def about
  end

  def login 
  	render "login", layout: "layout"
  end
end
