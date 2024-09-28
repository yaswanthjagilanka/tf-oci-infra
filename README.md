# tf-oci-infra
Terraform Script for Starting Infrastructure in Oracle Cloud

# OCI Infrastructure Setup with Terraform

This guide provides step-by-step instructions for setting up Oracle Cloud Infrastructure (OCI) using Terraform, similar to configuring AWS with access keys and secret keys.

## Prerequisites

Before you begin, ensure that you have the following:
- An OCI account
- Terraform installed on your local machine
- OCI CLI installed (optional)

## Step 1: Create an OCI API Key

1. **Login to OCI Console**: Go to your [OCI Console](https://cloud.oracle.com).
2. **Generate API Key**:
   - Navigate to **User Settings** under your profile.
   - Under **API Keys**, click **Add API Key**.
   - You can either upload your own key or generate a new one.
   - Download the private key (`private.pem`) as you'll need it later.

## Step 2: Gather Required Information

You'll need the following information from your OCI Console:

- **Tenancy OCID**: Found in the **Tenancy Details** page.
- **User OCID**: Found in your **User Details** page.
- **Compartment OCID**: If targeting a specific compartment, retrieve it from the **Compartment Details**.
- **Region**: The OCI region where you want to deploy resources (e.g., `us-ashburn-1`).

## Step 3: Configure the Terraform Provider for OCI

In your Terraform configuration file (`main.tf`), add the OCI provider configuration with your credentials:

    ```hcl
    provider "oci" {
    tenancy_ocid      = "<tenancy_ocid>"
    user_ocid         = "<user_ocid>"
    fingerprint       = "<api_key_fingerprint>"
    private_key_path  = "/path/to/private.pem"
    region            = "<oci_region>"
    compartment_ocid  = "<compartment_ocid>"
    }


Example :

    ```hcl
    provider "oci" {
    tenancy_ocid      = "ocid1.tenancy.oc1..example"
    user_ocid         = "ocid1.user.oc1..example"
    fingerprint       = "12:34:56:78:9a:bc:de:f0:12:34:56:78:9a:bc:de:f0"
    private_key_path  = "/home/user/.oci/private.pem"
    region            = "us-ashburn-1"
    compartment_ocid  = "ocid1.compartment.oc1..example"
    }

## Step 4: Optional - Configure ~/.oci/config File
You can create a configuration file similar to AWS credentials (~/.aws/credentials) by adding the following to ~/.oci/config:

```
[DEFAULT]
user=ocid1.user.oc1..xxxxxxEXAMPLExxxxxx
fingerprint=12:34:56:78:9a:bc:de:f0:12:34:56:78:9a:bc:de:f0
key_file=/path/to/private.pem
tenancy=ocid1.tenancy.oc1..xxxxxxEXAMPLExxxxxx
region=us-ashburn-1
```

## Step 5: Initialize and Apply Terraform
Now that your configuration is set up, initialize Terraform and apply your changes:

```
terraform init
terraform plan
terraform apply
```