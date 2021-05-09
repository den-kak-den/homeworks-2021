class Homework
  attr_reader :task, :post_comment, :date_post, :m_comment, :date_dl, :title
  attr_writer :status, :m_comment, :st_comment, :date_dl

  def initialize(title, task, post_comment, date_dl)
    @title = title
    @task = task
    @post_comment = post_comment
    @date_dl = date_dl
    @date_post = Time.now
    @status = 'posted_by_mentor'
    @m_comment = ''
    @st_comment = ''

  end

end
