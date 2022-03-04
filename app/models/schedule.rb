class Schedule < ApplicationRecord
    validates :title, presence: true
    validates :startday, presence: true
    validates :endday, presence: true

    validate :date_before_finish
    def date_before_finish
      return if endday.blank?
      errors.add(:endday, "は今日以降の日付で選択して下さい") if endday < Date.today
    end
end
