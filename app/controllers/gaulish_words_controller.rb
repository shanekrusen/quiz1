class GaulishWordsController < ApplicationController
  def index
    @words = GaulishWord.all
    @new_word = GaulishWord.new
  end
  
  def create
    @new_word = GaulishWord.create(word_params)
    redirect_to root_path
  end
  
  private
  
  def word_params
    params.require(:gaulish_word).permit(:word, :origin, :translation)
  end
end
