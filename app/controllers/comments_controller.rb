class CommentsController < ApplicationController
  
  def create
    #@movie = Movie.find(params[:movie_id])
    @comment = Comment.new(comment_params)
    @comment.movie_id = comment_params[:movie_id]
    @comment.save!
    @movie = @comment.movie
    redirect_to user_movie_path(current_user, @movie)
  end

  #def show
  	#redirect_to user_movie_comment_path(:movie_id, :comment_id)
  #end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :movie_id)
    end
end




