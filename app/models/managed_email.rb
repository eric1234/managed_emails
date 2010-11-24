class ManagedEmail < ActiveRecord::Base
  default_scope :order => 'name'
  alias_attribute :to_s, :name

  # Proxies to mailer to create message and then send
  def deliver(data)
    ManagedEmailMailer.templated_message(self, data).deliver
  end

end
