class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCmFqV808LowuUNVdWDwaBliMtAu6SooQ8HQ1hR6aXdqygw9FSYT4QIGdrx4d81mXtZCFc+ZSGHkdBxtBQbUbY5YV1X17GJ+lMosK5OuuVN4uD/HOWozCLHAh7YbrpmpZu1fiKXT6ZEvrZ2997QRFJGlzNLKr0JZpUcp03Z/TTS7F8OBrMetRMamBl0UV6nXNEfbny+NVI/0ZZtT0JkGbJ/xWBe95y/Npe6GVkv1gfZo2kioMGvfdMjhbepD7OvCro8t8JMGB9mNRAEVfvC6jhCi2/cBuAScCH8KY36VorEkdprsFcJW5Rh9bj4fyGA1BoBF4Qm96ZfWNhdAzYlZrGL',
  }  
}
