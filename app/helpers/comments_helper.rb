module CommentsHelper

  def authorship_details_for(comment)
    [comment.author, l(comment.created_at, format: :long)].join(" - ")
  end

  def title_for(comment)
    comment.title.presence || truncate(comment.body, length: 15)
  end
end
