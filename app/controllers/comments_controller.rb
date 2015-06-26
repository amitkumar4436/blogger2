class CommentsController < ApplicationController
	def create
		@comment= Comment.new(comment_params)
		@comment.post_id= params[:article_id]

		@comment.save

		redirect_to post_path(@comment.post)
	end

	def comment_params
		params.require(:comment).permit(:autor_name, :body)
	end
end

