module UsersHelper

  def no_posts
    if @user.posts.count == 0
      "User has not submitted any posts"
    end
  end

  def no_comments
    if @user.comments.count == 0
      "User has not submitted any comments"
    end
  end

end
