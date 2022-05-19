class MainController < ApplicationController
  protect_from_forgery with: :null_session

  def index

    puts "grila"
  end

  def teste1
    puts "Logando o acesso"
    @variavel_teste = "Dadinho é o caralho meu nome é zé pequeno"
  end


  def rest1

    @token = "asikxueryndqw7rydcqo837n9r0cda9we8fm8we,0c"


    if params[:token] == @token

      render inline: '{"chave":"valor"}' , content_type: 'application/json'

    else
        #head 401, inline: 'oh fuck'
        render inline: "oh fuck" , :status => 418

    end


  end



end
