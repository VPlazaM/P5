desc "Ejecución por defecto de la funcionalidad diseñada"
task :default do
  sh "ruby racional.rb"
end

desc "Ejecución de los test asociados"
task :testing do
  sh "ruby tc_racional.rb"
end

desc "build HTML from README.md"
task :html do
  sh "kramdown README.md  > README.html"
end

desc "install gems"
task :install do
  sh "bundle install"
end
