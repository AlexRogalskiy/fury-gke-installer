cluster_name    = "my-cluster"
cluster_version = "1.14"
network         = "vpc-id0"
subnetworks = [
  "subnet-id1", #Nodes
  "subnet-id2", #Pods
  "subnet-id3", #Services
]
ssh_public_key = "ssh-rsa example"
dmz_cidr_range = "10.0.4.0/24"
node_pools = [
  {
    name : "m5-node-pool"
    version : null # To use same value as cluster_version
    min_size : 1
    max_size : 2
    instance_type : "m5.large"
    volume_size : 100
    labels : {
      "node.kubernetes.io/role" : "app"
      "sighup.io/fury-release" : "v1.1.0"
    }
  },
  {
    name : "t3-node-pool"
    version : "1.14" # To use the cluster_version
    min_size : 1
    max_size : 1
    instance_type : "t3.micro"
    volume_size : 50
    labels : {}
  }
]