class AddManagedEmail < ActiveRecord::Migration

  def self.up
    create_table :managed_emails do |t|
      t.string :name, :null => false
      t.string :to, :from, :subject
      t.text :body
      t.boolean :to_readonly, :from_readonly, :subject_readonly,
        :null => false, :default => false
    end
  end

  def self.down
    drop_table :managed_emails
  end

end
