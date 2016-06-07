class SavedMessagesController < ApplicationController
  before_action :set_saved_message, only: [:show, :edit, :update, :destroy]

  # GET /saved_messages
  # GET /saved_messages.json
  def index
    @saved_messages = SavedMessage.all
  end

  # GET /saved_messages/1
  # GET /saved_messages/1.json
  def show
  end

  # GET /saved_messages/new
  def new
    @saved_message = SavedMessage.new
  end

  # GET /saved_messages/1/edit
  def edit
  end

  # POST /saved_messages
  # POST /saved_messages.json
  def create
    @saved_message = SavedMessage.new(saved_message_params)

    respond_to do |format|
      if @saved_message.save
        format.html { redirect_to @saved_message, notice: 'Saved message was successfully created.' }
        format.json { render :show, status: :created, location: @saved_message }
      else
        format.html { render :new }
        format.json { render json: @saved_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_messages/1
  # PATCH/PUT /saved_messages/1.json
  def update
    respond_to do |format|
      if @saved_message.update(saved_message_params)
        format.html { redirect_to @saved_message, notice: 'Saved message was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved_message }
      else
        format.html { render :edit }
        format.json { render json: @saved_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_messages/1
  # DELETE /saved_messages/1.json
  def destroy
    @saved_message.destroy
    respond_to do |format|
      format.html { redirect_to saved_messages_url, notice: 'Saved message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_message
      @saved_message = SavedMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saved_message_params
      params.require(:saved_message).permit(:title, :body)
    end
end
