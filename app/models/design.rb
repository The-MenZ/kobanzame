# == Schema Information
#
# Table name: designs
#
#  id                       :integer          not null, primary key
#  user_id                  :integer          not null
#  design_original_filename :string(255)      not null
#  design_file              :string(255)      not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class Design < ApplicationRecord
  # = Module & Configure
  mount_uploader :design_file, DesignFileUploader

  # = Association
  belongs_to :order, optional: true

  # = Validation
  # validates :title, presence: true, length: { maximum: 120 }
  # validates :comment, length: { maximum: 500 }
  # validate do
  # end

  # = Callback
  # before_validation do
  # end

  before_save do
    self.design_original_filename ||= ''
  end

  # = Instance method
end
