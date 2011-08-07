Factory.define :project do |project|
  project.title { "title" }
  project.email { "info@example.com" }
  project.starts_on { Date.today + 1.month }
  project.ends_on { Date.today + 2.months }
  project.design_completeness { 1 }
  project.base_points { 1 }
end
