class ManagedEmailMailer < ActionMailer::Base

  def templated_message(template, data)
    data.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
    mail :to => template.to, :from => template.from,
      :subject => template.subject do |format|
      format.text {render :inline => template.body}
    end
  end

end
