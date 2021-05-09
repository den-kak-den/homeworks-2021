class Homework
  attr_reader :task, :post_comment, :date_post, :m_comment, :date_dl
  attr_writer :status, :m_comment, :st_comment, :date_dl

  def initialize(task, post_comment, date_dl)
    @task = task
    @post_comment = post_comment
    @date_dl = date_dl
    @date_post = Time.now
    @status = :posted
    @m_comment = ''
    @st_comment = ''
  end

end
