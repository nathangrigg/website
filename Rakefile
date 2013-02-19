require 'rake/clean'
require 'directory_watcher'

CLOBBER.include("_site")

task :default => [:jekyll]

desc "Deploy site"
task :deploy => [:jekyll] do
    puts "\nSending changes to server\n"
    system("time rsync -rczi --delete --whole-file --filter='protect extended_log' --filter='protect stats/' --filter='protect login/' --filter='protect *.pyc' --filter='protect apps/' --chmod=Dg+rx,Fg+r _site/ homer.u.washington.edu:public_html/")
end

desc "Run jekyll"
task :jekyll => [:build] do
    system('time jekyll')
end

desc "Start the jekyll server"
task :preview => [:build] do
    ip_addr = `/sbin/ifconfig en1 | sed -n '4 p' | awk '{print $2}'`.strip
    puts "Web server at http://#{ip_addr}:4000"
    system("jekyll --server --url=http://#{ip_addr}:4000 --auto")
end

desc "Build pre-jekyll tasks"
task :build do
    # nothing to do
end
