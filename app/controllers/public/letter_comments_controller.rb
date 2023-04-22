class Public::LetterCommentsController < ApplicationController
  def create
    letter = Letter.find(params[:letter_id])
    comment = current_user.letter_comments.new(letter_comment_params)
    comment.letter_id = letter.id
    comment.save
    redirect_to request.referer
  end
  
  def destroy
    LetterComment.find_by(id: params[:id], letter_id: params[:letter_id]).destroy
    redirect_to request.referer
  end
  
  private
  def letter_comment_params
    params.require(:letter_comment).permit(:comment)
  end
end
