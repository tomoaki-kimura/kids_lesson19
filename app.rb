require 'sinatra'

get '/' do
  # ここにコードを入力してください。
  start = params[:start].to_i
  goal = params[:goal].to_i

  @fizz_buzz = []
  @fizz = []
  @buzz = []
  (start..goal).each do |n|
    case
    when n % 3 == 0 && n % 5 == 0
      @fizz_buzz << n
    when n % 3 == 0
      @fizz << n
    when n % 5 == 0
      @buzz << n
    end
  end
  # ここまでコードを入力して下さい。
  @fizz_buzz = [] if @fizz_buzz.include?(0)
  erb :index
end

# Lesson3変数を使ってプログラミング