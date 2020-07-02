class Api::ExamplesController < ApplicationController

  def name
    p "params"
    @name = params['name']
    render 'name.json.jb'
  end

  def guess
    
    correct_answer = 42
    user_guess = params['guess'].to_i

    if user_guess > correct_answer
      @message = "You guessed too high"
    elsif user_guess < correct_answer
      @message = "You guessed too low"
    else
      @message = "You nailed it!"
    end
    render 'number_guess.json.jb'
  end

end
