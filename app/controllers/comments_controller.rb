class CommentsController < ApplicationController
    # Blogをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
    def create
      # Blogをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
      @blog = Blog_in.find(params[:blog_in_id])
      @comment = @blog.comments.build(comment_params)
      # クライアント要求に応じてフォーマットを変更
      respond_to do |format|
        if @comment.save
          format.html { redirect_to blog_path(@blog) }
        else
          format.html { redirect_to blog_path(@blog), notice: '投稿できませんでした...' }
        end
      end
    end
    private
    def comment_params
      params.require(:comment).permit(:blog_in_id, :content)
    end
end
