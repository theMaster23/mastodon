# frozen_string_literal: true

# == Schema Information
#
# Table name: trends_statuses
#
#  id         :bigint(8)        not null, primary key
#  account_id :bigint(8)        not null
#  allowed    :boolean          default(FALSE), not null
#  score      :float            default(0.0), not null
#  language   :string
#

class Trends::Status < ApplicationRecord
  belongs_to :status, class_name: '::Status', foreign_key: :id

  scope :allowed, -> { where(allowed: true) }
end
