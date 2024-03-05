# frozen_string_literal: true

require_relative "lib/ruby_algorithm/version"

Gem::Specification.new do |spec|
  spec.name = "ruby_algorithm"
  spec.version = RubyAlgorithm::VERSION
  spec.authors = ["Dev-LucasNunes"]
  spec.email = ["dev.lucasnunes@gmail.com"]

  spec.summary = "RubyAlgorithm oferece uma coleção de algoritmos e estruturas de dados úteis para resolver problemas comuns de programação."
  spec.description = "RubyAlgorithm é uma gem que fornece algoritmos úteis para resolver problemas comuns de programação, otimização e busca. Ela inclui implementações de algoritmos clássicos e estruturas de dados, facilitando a implementação de soluções eficientes para problemas complexos."
  spec.homepage = "https://github.com/Dev-LucasNunes/algorithm_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = "https://github.com/Dev-LucasNunes/algorithm_gem"
  spec.metadata["source_code_uri"] = "https://github.com/Dev-LucasNunes/algorithm_gem"
  spec.metadata["changelog_uri"] = "https://github.com/Dev-LucasNunes/algorithm_gem/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end + ["LICENSE.txt"]
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
