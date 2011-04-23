class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if options[:allow_nil] and value.blank?
    record.errors[attribute] << I18n.t('validation.email') unless value =~ /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  end
end

