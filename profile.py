import geni.portal as portal 
import geni.rspec.pg as rspec

# Create a request object to start building the RSpec
request = portal.context.makeRequestRSpec()

# Create a XenVM 
node = request.XenVM("node")
node.disk_image = "urn:publicid:IDN+emulab.net+image+emulab-ops:UBUNTU18-64-STD"
node.routable_control_ip = "true"

node.addService(rspec.Execute(shell="/bin/sh",
                              command="sudo apt update"))
node.addService(rspec.Execute(shell="/bin/sh",
                              command='sudo apt-get install openjdk-8-jdk-headless'))

# Print the RSpec to the enclosing page.
portal.context.printRequestRSpec()
