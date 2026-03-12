# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "DigitalHealthHumanities-toolkit-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["UCSF Archives and Special Collections"]
  spec.email         = ["digitalarchives@ucsf.edu"]

  spec.summary       = "Jekyll theme for GitHub Pages Lesson Platform"
  spec.homepage      = "https://github.com/DigitalHealthHumanities/toolkittheme"
  spec.license       = "CC-BY-NC-SA-4.0"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "ruby", "~> 4.4"
  spec.add_runtime_dependency "jekyll", "~> 3.5"
end
