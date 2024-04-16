# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "FutMatchBot"
  spec.version = "0.1.0"
  spec.authors = ["Luis Miguel"]
  spec.email = ["oluismrs@gmail.com"]

  spec.summary = "FutMatch, é um bot criado para te manter atualizado sobre os jogos de futebol."
  spec.description = "FutMatch, é um bot criado com o propósito de te manter atualizado sobre novos jogos de futebol, ele exibe datas, horários e os times que se enfrentam na semana. FutMatch possui diversas ligas para você consultar e buscar informações sobre."
  spec.homepage = "https://github.com/oluwis"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/oluwis"
  spec.metadata["changelog_uri"] = "https://github.com/oluwis"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end