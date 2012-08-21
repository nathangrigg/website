require 'rake/clean'
require 'directory_watcher'

CLOBBER.include("_site")

task :default => [:jekyll]

desc "Deploy site"
task :deploy => [:jekyll] do
    puts "\nSending changes to server\n"
    system("time rsync -rczi --delete --whole-file --filter='protect extended_log' --filter='protect stats/' --filter='protect *.pyc' --filter='protect apps/' --chmod=Dg+rx,Fg+r _site/ homer.u.washington.edu:public_html/")
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

desc "Compile calendar"
task :cal do
    dir = "/Users/grigg/Dropbox/Math/teaching/307/calendar"
    cal = "#{dir}/307"
    py = "#{dir}/cal.py"
    now = "2012 09 01"
    output = "_includes/307au12cal.html"
    system("when --calendar='#{cal}' --now='#{now}' --future=200 | '#{py}' > '#{output}'")
end
