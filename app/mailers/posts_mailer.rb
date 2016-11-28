class PostsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.posts_mailer.new_post_notification.subject
  #
  def new_post_notification(post)
    @post = post
    mail to: "pikowoko@gmail.com", subject: "Wow, nowy post!", from: 'Hello Rails <pikowoko@gmail.com>'
  end
end
