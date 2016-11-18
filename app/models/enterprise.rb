class Enterprise < ApplicationRecord
  include OrganizationScopedModel
  organization_scoped

  belongs_to :primary_industry_classification,
        class_name: 'IndustryClassification',
        optional: true,
        foreign_key: 'primary_industry_classification_clasz'
  belongs_to :social_intervention_domain, optional: true
  belongs_to :enterprise_category, optional: true
  belongs_to :entrepreneur, optional: true

  validates :number, uniqueness: true, presence: true
  validates :application_date, presence: true
  validates :name, presence: true
end
