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
      @result = "Sorry, but #{word.join} cannot be built out of #{sample}"
    else
      @result = "Ruben is the best"
    end



#     <% if !@letters.include?(:word) %>
# <%= "Sorry, but ${:word} cannot be built out of ${@letters}" %>
# <% else %>
# <% fetch(`https://wagon-dictionary.herokuapp.com/${:word}`) %>
# <% .then(response => response.json()) %>
# <% .then((data) => { %>
# <% if data.found = true %>
# <%= "Congratulations! ${:word} is a valid English word!" %>
# <% else data.found = false %>
# <%= "Sorry, but ${:word} doesn't seem to be an Enlish word..." %>
# <% end %>
# <%});%>
# <% end %>
  end
end


 # b c d e f g h i j k l o p q r s t u v w x y
