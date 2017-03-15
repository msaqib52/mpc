class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :detail

  def headers
    {
      :subject => "MultiPlayers Club Contact",
      :to => "msaqib52@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
