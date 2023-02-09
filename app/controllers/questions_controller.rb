class QuestionsController < ApplicationController
  def ask
  end


  # La vue answer.html.erb affichera la question que tu poses
  # au coach et sa réponse.
  # Le contrôleur devrait lire la question depuis params
  # et calculer une variable d’instance @answer à afficher dans la vue.

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
