# set path to app that will be used to configure unicorn,
# note the trailing slash in this example
@dir = File.join(File.dirname(__FILE__),"")

# @tmp = File.join(@dir,"tmp")
# Dir.exists?(@tmp) || Dir.mkdir(@tmp)

worker_processes 20
working_directory @dir

timeout 30

# Specify path to socket unicorn listens to
listen "0.0.0.0:8080", :backlog => 64

# Set process id path
# pid File.join(@tmp, "unicorn.pid")

# Set log file paths
# stderr_path File.join(@tmp, "unicorn.stderr.log")
# stdout_path File.join(@tmp, "unicorn.stdout.log")
