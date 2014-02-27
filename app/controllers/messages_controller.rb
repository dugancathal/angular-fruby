class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)

    content = {channel: "/channel1", data: {body: @message.body, from: @message.from.username}}
    message = "message=#{content.to_json}"
    HTTParty.post('http://localhost:9292/faye', body: message)

    respond_to do |format|
      if @message.save
        format.json { render action: 'show', status: :created, location: @message }
      else
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def message_params
    data = params.require(:message).permit(:to_id, :from, :body)
    data[:from] = User.find_or_create_by(username: data[:from])
    data
  end
end
