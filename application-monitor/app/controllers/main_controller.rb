require 'rest-client'
require 'json'



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


  def getMonitor
    responseService = Hash.new
    responseService["message"] = ""
    responseService["error"] = false

    begin
      pageResult = RestClient.get 'https://robotizando.com.br/pt-br'
      case pageResult.code
        when 200
          responseService["message"] = "Success"
        else
              responseService["message"] = "Error http" +  pageResult.code
              responseService["error"] = true
        end
    rescue RestClient::ExceptionWithResponse => err
      responseService["message"] = "Error http" + err.to_json
      responseService["error"] = true
    rescue Errno::ECONNREFUSED
          responseService["message"] = "Server Down"
        responseService["error"] = true
    end

    return responseService
  end



  def monitoraRobotizando

    @token = "asikxueryndqw7rydcqo837n9r0cda9we8fm8we,0c"

    if params[:token] == @token
      
      AlertMailer.with(teste: "Teste de parametro simples").alert_robotizando.deliver_now

        responseService = getMonitor

        if responseService["error"]
          # send email



          render json: responseService  , content_type: 'application/json', status: 418
        else
          render json: responseService , content_type: 'application/json'
        end
    else
        #head 401, inline: 'oh fuck'
        render inline: "oh fuck" , :status => 418
    end


  end



end
