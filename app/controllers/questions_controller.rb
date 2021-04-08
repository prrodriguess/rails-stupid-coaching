class QuestionsController < ApplicationController
    def index
    end

    def ask
    end

    def answer
        @question = params[:question]
        if @question.downcase == "i am going to work right now!"
            @answer = "Well Done !! Come on !!"
          elsif @question.include? "?"
            @answer = "Silly question, get dressed and go to work!"
          elsif @question.include? "!"
            @answer = "SLAP !!! Come on !! get up !!"
          else
            @answer = "I don't care, get dressed and go to work!"
          end
    end
end
