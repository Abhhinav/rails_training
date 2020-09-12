class HomeController < ApplicationController
    def ok

        render plain: "OK"

    end
    def index 
        #views/controller/index.html.erb
        #render plain: "This is an index page!"
        @categories = Category.all
        @tags = Tag.all
        @posts = ["post1", "post2"]
    end
    def about

    end
    def contact

    end

end