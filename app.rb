require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number]
    string = " "
    @number.to_i.times { string+= "#{@phrase}\n"}
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    case @operation
    when "add"
      @result = @num1.to_i + @num2.to_i
    when "subtract"
      @result = @num1.to_i - @num2.to_i
    when "multiply"
      @result = @num1.to_i * @num2.to_i
    when "divide"
      @result = @num1.to_i / @num2.to_i
    end
    "#{@result}"
  end
end
