require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @operation == "add"
      "#{@num1.to_i + @num2.to_i}"
    elsif @operation == "subtract"
      "#{@num1.to_i - @num2.to_i}"
    elsif @operation == "multiply"
      "#{@num1.to_i * @num2.to_i}"
    elsif @operation == "divide"
      "#{@num1.to_i / @num2.to_i}"
    end
  end
end