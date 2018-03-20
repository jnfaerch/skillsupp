module ApplicationHelper

  def answer_collection_for_question(question)
    question.answers.map do |answer|
      [answer.content, answer.id]
    end
  end

end
