Creating single and multizone Kubernetes and OpenShift clusters

Use this tutorial to create single and multizone clusters with IBM Cloud Kubernetes Service or Red Hat OpenShift on IBM Cloud, and deploy your own set of compute hosts in the public cloud where you can run and manage highly available containerized apps.

In this tutorial, you create a standard classic IBM Cloud Kubernetes Service or Red Hat OpenShift on IBM Cloud cluster with the following configuration:

    The cluster is created in the us-south region.
    The cluster is created with the default worker pool.
    All worker nodes are connected to a private and public VLAN. These public and private VLANs assign public and private IP addresses to the worker nodes.
    All worker nodes are created with a virtual worker node flavor on shared hardware. If you want to use a different worker node flavor, see the IBM Cloud Kubernetes Service or Red Hat OpenShift on IBM Cloud documentation.
    To allow access to your cluster from the internet and run public-facing app workloads in your cluster, the cluster is set up with both a public and a private service endpoint. For more information, about how network traffic flows when a public and a private service endpoint is enabled, see Worker-to-master and user-to-master communication: Service endpoints in IBM Cloud Kubernetes Service and Red Hat OpenShift on IBM Cloud.

Keep in mind that creating a cluster incurs costs. Make sure to review What am I charged for when I use IBM Cloud Kubernetes Service? or What am I charged for when I use Red Hat OpenShift on IBM Cloud? before you proceed.
Objectives

In this tutorial, you will:

    Learn how to create a single zone IBM Cloud Kubernetes Service or Red Hat OpenShift on IBM Cloud cluster with Terraform on IBM Cloud.
    Convert your single zone cluster into a multizone cluster for higher availability.
    Add a new worker pool to the cluster.
    Remove the default worker pool that is automatically set up during cluster creation.

Audience

This tutorial is intended for system administrators that want to learn how to create an IBM Cloud Kubernetes Service or Red Hat OpenShift on IBM Cloud cluster and spread this cluster across zones.
Prerequisites

    If you do not have one, create an IBM Cloud Pay-As-You-Go or Subscription IBM Cloud account.
    Install the IBM Cloud command line and the IBM Cloud Kubernetes Service command line plug-in.
    Follow the instructions to make sure that you are assigned the required permissions in Identity and Access Management (IAM) to create clusters and that your account is enabled for Virtual Routing and Forwarding (VRF).
