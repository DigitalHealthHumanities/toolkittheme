# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "digitalhealthhumanities-toolkit-theme"
  spec.version       = "0.2.0"
  spec.authors       = ["UCSF Archives and Special Collections"]
  spec.email         = ["digitalarchives@ucsf.edu"]

  spec.summary       = "Jekyll theme for GitHub Pages Lesson Platform"
  spec.homepage      = "https://github.com/DigitalHealthHumanities/toolkittheme"
  spec.license       = "CC-BY-NC-SA-4.0"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.5", ">= 3.5"
  spec.required_ruby_version  = ">=3.4.4"
end
