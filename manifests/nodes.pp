
node 'puppet.localdomain' {
 
   include jenkins

 
}

node 'puppet01.localdomain' {
   include jenkins_1

}

node 'puppet01.localdomain' {
   include jenkins_2

}
