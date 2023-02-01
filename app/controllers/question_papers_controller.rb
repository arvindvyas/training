class QuestionPapersController < ApplicationController
  before_action :set_question_paper, only: %i[ show edit update destroy ]

  # GET /question_papers or /question_papers.json
  def index
    @question_papers = QuestionPaper.all
  end

  # GET /question_papers/1 or /question_papers/1.json
  def show
  end

  # GET /question_papers/new
  def new
    @question_paper = QuestionPaper.new
    @questions = Subject.find_by(subject_name: params[:subject]).questions
  end

  # GET /question_papers/1/edit
  def edit
  end

  # POST /question_papers or /question_papers.json
  def create
    @question_paper = QuestionPaper.new(question_paper_params)

    respond_to do |format|
      if @question_paper.save
        format.html { redirect_to question_paper_url(@question_paper), notice: "Question paper was successfully created." }
        format.json { render :show, status: :created, location: @question_paper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_papers/1 or /question_papers/1.json
  def update
    respond_to do |format|
      if @question_paper.update(question_paper_params)
        format.html { redirect_to question_paper_url(@question_paper), notice: "Question paper was successfully updated." }
        format.json { render :show, status: :ok, location: @question_paper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_papers/1 or /question_papers/1.json
  def destroy
    @question_paper.destroy

    respond_to do |format|
      format.html { redirect_to question_papers_url, notice: "Question paper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_paper
      @question_paper = QuestionPaper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_paper_params
      params.require(:question_paper).permit( :subject,:user_id,question: {},answer: {})
    end
end
