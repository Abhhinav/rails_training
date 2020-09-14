class HomeController < ApplicationController
    def ok

        render plain: "OK"

    end
    def index 
        #views/controller/index.html.erb
        #render plain: "This is an index page!"
        @categories = Category.all.includes(:posts)
        @tags = Tag.all
        @posts = Post.order_by_latest.published
    end
    def about

    end
    def read
        @post = Post.find(params[:id])
    end
    def contact

    end

end