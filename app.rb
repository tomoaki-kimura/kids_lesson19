require 'sinatra'

get '/' do
  number_start = params[:number_start].to_i
  number_end = params[:number_end].to_i
  @results = []

  # ここにコードを入力してください。
  (number_start..number_end).each do |n|
    case
    when n % 3 == 0 && n % 5 == 0
      @results << [n, 'FizzBuzz']
    when n % 3 == 0
      @results << [n, 'Fizz']
    when n % 5 == 0
      @results << [n, 'Buzz']
    else
      @results << [n, n]
    end
  end
  # ここまでコードを入力して下さい。

  @results = [] if @results == [[0, "FizzBuzz"]]
  erb :index
end
