class DateValidator < ActiveModel::Validator
  def validate(event)
    if options[:fields].any?{|start_date| event.send(start_date) < Date.today()}
      event.errors[:base] << "Date is in the past, cannot be used"
    end
  end
end