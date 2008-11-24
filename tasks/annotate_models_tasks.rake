desc "Add schema information (as comments) to model files"

task :annotate_models do
   require File.join(File.dirname(__FILE__), "../lib/annotate_models.rb")
   AnnotateModels.do_annotations
end

# annotate models after migrating
namespace :db do
  task :migrate do
     Rake::Task["annotate_models"].invoke
  end
end

