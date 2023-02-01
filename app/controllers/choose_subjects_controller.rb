class ChooseSubjectsController < ApplicationController
  before_action :set_choose_subject, only: %i[ show edit update destroy ]

  # GET /choose_subjects or /choose_subjects.json
  def index
    @choose_subjects = ChooseSubject.all
  end

  # GET /choose_subjects/1 or /choose_subjects/1.json
  def show
  end

  # GET /choose_subjects/new
  def new
    @choose_subject = ChooseSubject.new
  end

  # GET /choose_subjects/1/edit
  def edit
  end

  # POST /choose_subjects or /choose_subjects.json
  def create
    @choose_subject = ChooseSubject.new(choose_subject_params)

    respond_to do |format|
      if @choose_subject.save
        format.html { redirect_to choose_subject_url(@choose_subject), notice: "Choose subject was successfully created." }
        format.json { render :show, status: :created, location: @choose_subject }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @choose_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choose_subjects/1 or /choose_subjects/1.json
  def update
    respond_to do |format|
      if @choose_subject.update(choose_subject_params)
        format.html { redirect_to choose_subject_url(@choose_subject), notice: "Choose subject was successfully updated." }
        format.json { render :show, status: :ok, location: @choose_subject }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @choose_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choose_subjects/1 or /choose_subjects/1.json
  def destroy
    @choose_subject.destroy

    respond_to do |format|
      format.html { redirect_to choose_subjects_url, notice: "Choose subject was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choose_subject
      @choose_subject = ChooseSubject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def choose_subject_params
      params.require(:choose_subject).permit(:selected_subject)
    end
end
