class WikisController < ApplicationController
  def index
    @wikis = Wiki.all
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new
    @wiki.title = params[:wiki][:title]
    @wiki.body = params[:wiki][:body]
    @wiki.private = params[:wiki][:private]

    # @wiki.save
    if @wiki.save
      flash[:notice] = "new wiki saved"
      redirect_to @wiki
    else
      flash[:alert] = "no dice"
      redirect_to :new_wiki
    end
  end

  def edit
  end
end


# def create
#         @topic = Topic.find(params[:topic_id])
#         @post = @topic.posts.build(post_params)
#         @post.user = current_user
#         if @post.save
#             flash[:notice] = "Post was saved."
#             redirect_to [@topic, @post]
#         else
#             flash.now[:alert] = "There was an error saving the post. Please try again."
#             render :new
#         end
#     end
