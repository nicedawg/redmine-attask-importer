require_dependency 'user'

module UserPatch
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods

    @attask_id_field = nil

    def find_by_attask_id(attask_id)
      attask_id_field.custom_values.where(value: attask_id).first.customized rescue nil
    end

    def attask_id_field
      @attask_id_field ||= UserCustomField.find_by_name("AtTask ID")
    end
  end
end

User.send(:include, UserPatch)
