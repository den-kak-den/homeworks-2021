class Notification
  attr_reader :content, :date, :read_status, :read_date
  attr_writer :read_status, :read_date

  def initialize(content: :content, date: :date)
    @content = content
    @date = Time.now
    @read_status = 'unread'
    @read_date = nil
  end



end
