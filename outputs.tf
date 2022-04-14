output "Jenkins-Main-Node-Public-IP" {
  value = aws_instance.jenkins-master.public_ip
}

output "Jenkins-Worker-Public-IPs" {
  #value = aws_instance.jenkins-worker-oregon.public_ip
  value = {
    for instance in aws_instance.jenkins-worker-oregon :
    instance.id => instance.public_ip
  }
}
