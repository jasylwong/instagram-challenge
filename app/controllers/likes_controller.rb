class LikesController < ApplicationController

  def save_like
    p @current_user
    p "-----"
    @like = Like.new(post_id: params[:post_id], account_id: @current_user.id)
    @post_id = params[:post_id]

    respond_to do |format|
      format.js {
        if @like.save
          @success = true
        else
          @success = false
        end
        render 'posts/like'
      }
    end
  end
end
