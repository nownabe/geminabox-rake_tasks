require "bundler/gem_helper"

module Geminabox
  module RakeTasks
    def self.patch
      Bundler::GemHelper.prepend(self)
    end

    def install
      super
      Rake.application.instance_variable_get("@tasks").delete("release")
      desc "Create tag #{version_tag} and build and push #{name}-#{version}.gem to your gem in a box server"
      task 'release' => ['build', 'release:guard_clean',
                         'release:source_control_push', 'release:rubygem_push'] do
      end
    end

    protected

    def rubygem_push(path)
      Bundler.with_clean_env do
        sh("bundle exec gem inabox '#{path}'")
        Bundler.ui.confirm "Pushed #{name} #{version}"
      end
    end
  end
end

Geminabox::RakeTasks.patch
require "bundler/gem_tasks"
