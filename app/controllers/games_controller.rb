require 'open-uri'

class GamesController < ApplicationController
  def new
    alphapet = %w(a b c d e f g h i j k l o p q r s t u v w x y z)
    @letters = alphapet.sample(10)

  end

  def score

    word = params[:word].chars
    sample = params[:letter_array].chars
    compare = word&sample
    if compare.length < word.length
      @result = "Sorry, but #{word.join.upcase} cannot be built out of #{sample.join.upcase}"
    else
      url = "https://wagon-dictionary.herokuapp.com/#{word.join}"
      html_file = open(url).read
      html_doc = JSON.parse(html_file)
      if html_doc["found"] == false
        @result = "Sorry, but '#{word.join}' doesn't seem to be an Enlish word..."
      else
        @result = "Congratulations! '#{word.join}' is a valid English word!\n #{word.length.to_i} points!"
      end
    end
  end
end

