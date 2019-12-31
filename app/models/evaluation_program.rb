# frozen_string_literal: true

# == Schema Information
#
# Table name: evaluation_programs
#
#  id         :bigint           not null, primary key
#  name       :string
#  start_at   :datetime
#  end_at     :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


#
# A wrapper for evaluations. A project (Startup) might be part of several
# EvaluationPrograms, some lasting hours, some lasting months, and each with different evaluators
#
class EvaluationProgram < ApplicationRecord
  has_many :project_evaluation_summaries
  has_many :program_criteria
  has_many :projects, through: :project_evaluation_summaries
  has_many :evaluation_criteria, through: :program_criteria

  validates :name, uniqueness: true

  def total_current_percentage(options = {exclude_ids: []})
    program_criteria.where.not(id: options[:exclude_ids]).sum(:weight)
  end
end
