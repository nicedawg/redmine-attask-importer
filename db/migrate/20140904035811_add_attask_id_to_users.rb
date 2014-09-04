class AddAttaskIdToUsers < ActiveRecord::Migration
  def up
    UserCustomField.create(name: "AtTask ID", field_format: "string", visible: true, editable: false)
  end
  def down
    UserCustomField.where(name: "AtTask ID").destroy_all
  end
end
