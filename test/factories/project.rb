Factory.define :project do |project|
  project.title { "title" }
  project.email { "info@example.com" }
  project.starts_on { Date.today + 1.month }
  project.ends_on { Date.today + 2.months }
end
