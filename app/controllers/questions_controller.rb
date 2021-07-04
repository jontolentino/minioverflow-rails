class QuestionsController < ApplicationController
    def index
        @questions = Question.all.reverse_order
    end 

    def html
        @questions = Question.where({subject: "HTML"}).reverse_order
    end

    def css
        @questions = Question.where({subject: "CSS"}).reverse_order
    end

    def javascript
        @questions = Question.where({subject: "Javascript"}).reverse_order
    end

    def ruby
        @questions = Question.where({subject: "Ruby"}).reverse_order
    end

    def new
        @questions = Question.new
    end

    def new_create

        @question = Question.new(post_params)
        
        if @question.save
            # redirect_to question_index_path
            redirect_to question_show_path(@question)
        else
            render :new
        end
    end

    def show
        @question = Question.find(params[:id])
    end

    def edit
        # edit controlerr
        @question = Question.find(params[:id])
    end

    def update
        # update controller
        # raise params.inspect
        @question = Question.find(params[:id])
        @question.update(post_params)
        redirect_to question_show_path(@question), alert: "Question Updated"
    end

    def delete
        Question.find(params[:id]).destroy
        redirect_to question_index_path
    end

    private
    def post_params
        params.require(:question).permit(:title, :content, :name, :subject)
    end
end