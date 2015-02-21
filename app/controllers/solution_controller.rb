class SolutionController < ApplicationController

  def questions

    
  end

  def report
    c = Array.new(9)
  	c[1] = 'D'
    c[2] = 'A'
    c[3] = 'A'
    c[4] = 'B'
    c[5] = 'C'
    c[6] = '3'
    c[7] = '4'
    c[8] = 'C'

    a = Array.new(9)
    a[1] = params[:a1]
  	a[2] = params[:a2]
  	a[3] = params[:a3]
  	a[4] = params[:a4]
  	a[5] = params[:a5]
  	a[6] = params[:a6]
    a[7] = params[:a7]
  	a[8] = params[:a8]

  	score=0

  	for i in 1..8
      if a[i] == c[i]
      	score = score + 1
      end
  	end
    
    if score <= 5
    	@comment = "Thank you for trying out the website!"
    elsif score == 6
    	@comment = "Not bad!"
    elsif score == 7
    	@comment = "Pretty Good!"
    else
    	@comment = "Congratulations! You got 100%!"
    end



  	@a1 = params[:a1]
  	@a2 = params[:a2]
  	@a3 = params[:a3]
  	@a4 = params[:a4]
  	@a5 = params[:a5]
  	@a6 = params[:a6]
    @a7 = params[:a7]
  	@a8 = params[:a8]
  end
end
