class Message
  def choose_one
    messages_file['messages'].shuffle.first
  end

  private

  def messages_file
    YAML.load_file(Rails.root.join("app","models","message","messages.yml"))
  end
end
