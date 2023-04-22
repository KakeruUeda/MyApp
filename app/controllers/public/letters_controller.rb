class Public::LettersController < ApplicationController
  def create
    @letter = Letter.new(letter_params)
    @letter.user_id = current_user.id
    #@letter.save
    #redirect_to public_letters_path(@letter)
    if @letter.save
      redirect_to public_letter_path(@letter), noitice: "You have created letter successfully."
    else
      @letters = Letter.all
      render 'index'
    end
  end
  
  def show
    @letter = Letter.find(params[:id])
    @letter_comment = LetterComment.new 
  end
  
  def index
    @letters = Letter.all
  end
  
  private

  def letter_params
    params.require(:letter).permit(:image, :caption)
  end


  
end
