class BlogsController < ApplicationController

    def index
        @blogs = Blog.all.order(created_at: :desc)
    end

    def new
        @blogs = Blog.new
    end

    def create
        @blog = Blog.create(blog_filtered)
        @blog.save
        redirect_to '/'
    end

    def show
        @blog = Blog.find(params[:id])
    end

    private

    def blog_filtered
        params.require(:blog).permit([:title, :author, :content])
    end
end