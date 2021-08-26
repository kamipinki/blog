class ArticlesController < ApplicationController
    def new
    end
    def create 
        render plain: params[:commit].inspect
    end 
end
