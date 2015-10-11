class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================
    possible_moves=["rock","paper","scissors"]
    @computer_move = possible_moves.sample
if @user_move=="rock"
    if @computer_move==@user_move
        @result="tied"
    end
    if @computer_move=="paper"
        @result="lose"
    end
    if @computer_move=="scissors"
        @result="win"
    end
end
if @user_move=="paper"
    if @computer_move==@user_move
        @result="tied"
    end
    if @computer_move=="rock"
        @result="win"
    end
    if @computer_move=="scissors"
        @result="lose"
    end
end
if @user_move=="scissors"
    if @computer_move==@user_move
        @result="tied"
    end
    if @computer_move=="rock"
        @result="lose"
    end
    if @computer_move=="paper"
        @result="win"
    end
end
    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
