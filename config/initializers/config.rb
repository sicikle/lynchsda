INFO = YAML::load(ERB.new(IO.read(File.join(Rails.root, 'config', 'info.yml'))).result)