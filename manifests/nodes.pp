
node 'puppet.localdomain' {
 
   #include jenkins
include elasticsearch
 
}

node 'puppet01.localdomain' {
  # include jenkins_1
   include elasticsearch
}

node 'puppet01.localdomain' {
 #  include jenkins_2
 include elasticsearch
}
