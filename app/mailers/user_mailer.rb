class UserMailer < ActionMailer::Base

  default :from => "wolfblog@example.com"

  def confirm_comment_post(comment)
    @comment_text = comment
    mail(:to => comment.post.user.email, :subject => "Someone - Comment in your Post ")
  end 

  def cofirm_user_registration(user)
    
  end
end 