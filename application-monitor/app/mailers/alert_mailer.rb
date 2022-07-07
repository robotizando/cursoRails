require 'json'

class AlertMailer < ApplicationMailer

  default from: 'daniel@robotizando.com.br'

  def alert_robotizando
    @emailTo = "daniel@robotizando.com.br"
    @url  = 'http://example.com/login'
    @parametro = params[:teste]

puts( Rails.application.credentials.smtp_pass)

    delivery_options = { user_name: Rails.application.credentials.smtp_user,
                            password: Rails.application.credentials.smtp_pass,
                            address: "email-smtp.us-east-1.amazonaws.com",
                            port: 587,
                            authentication: 'login',
                            enable_starttls_auto: true }

                          puts( delivery_options.to_json )

    mail(to: @emailTo, subject: 'Site Robotizando fora do ar!!')
  end

end
