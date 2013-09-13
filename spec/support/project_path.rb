module Support
  module ProjectPath

    project_path = Pathname.new(__FILE__).expand_path
    project_path = project_path.dirname until project_path.join("Rakefile").exist?
    project_path

    PROJECT_PATH = project_path

    def project_path
      PROJECT_PATH
    end

    module ClassMethods
      def project_path
        PROJECT_PATH
      end
    end

    def self.included(base)
      base.extend ClassMethods
    end

    extend self

  end
end
