require "sinatra"
require_relative "./lib/calculator.rb"
require_relative "./lib/memory.rb"

get "/" do
  erb :home
end

get "/operations" do
  erb :operations
end

post "/operations" do
  @operation = params[:operation]
  @number1 = params[:number1].to_f
  @number2 = params[:number2].to_f
  @result = Calculator.new(@number1,@number2,@operation).operation

  erb :result
end

post "/memory" do
  @numberToSave = params[:result]

  Memory.new.save_number_in_file(@numberToSave)
  redirect to :operations
end

post "/getMemory" do
  @numberFromMemory = Memory.new.get_number_from_file.to_f

  erb :operations
end
