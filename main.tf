# Create an Terraform on IBM Cloud configuration file for your single zone cluster. 

# The following example creates a single zone cluster in the dal10 zone with a default worker pool that consists of 3 worker nodes that are connected to a private and public VLAN in dal10.

# https://cloud.ibm.com/docs/ibm-cloud-provider-for-terraform?topic=ibm-cloud-provider-for-terraform-tutorial-tf-clusters

data ibm_resource_group "resource_group" {
    name = "default"
}
resource ibm_container_cluster "tfcluster" {
name            = "tfcluster"
datacenter      = "dal10"
machine_type    = "b3c.4x16"
hardware        = "shared"
public_vlan_id  = "2234945"
private_vlan_id = "2234947"

kube_version = "1.24.2"

default_pool_size = 3
    
public_service_endpoint  = "true"
private_service_endpoint = "true"

resource_group_id = data.ibm_resource_group.resource_group.id
}

resource "ibm_container_worker_pool_zone_attachment" "dal12" {
cluster         = ibm_container_cluster.tfcluster.id
worker_pool     = ibm_container_cluster.tfcluster.worker_pools.0.id
zone            = "dal12"
private_vlan_id = "<private_vlan_ID_dal12>"
public_vlan_id  = "<public_vlan_ID_dal12>"
resource_group_id = data.ibm_resource_group.resource_group.id
}

resource "ibm_container_worker_pool_zone_attachment" "dal13" {
cluster         = ibm_container_cluster.tfcluster.id
worker_pool     = ibm_container_cluster.tfcluster.worker_pools.0.id
zone            = "dal13"
private_vlan_id = "<private_vlan_ID_dal13>"
public_vlan_id  = "<public_vlan_ID_dal13>"
resource_group_id = data.ibm_resource_group.resource_group.id
}