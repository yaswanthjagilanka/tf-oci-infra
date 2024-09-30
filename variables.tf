variable "compartment_ocid" {
  type    = string
  default = ""
}

variable "tenancy_ocid" {
  type    = string
  default = ""
}

variable "user_ocid" {
  type    = string
  default = ""
}

variable "private_key_path" {
  type    = string
  default = ""
}

variable "fingerprint" {
  type    = string
  default = ""
}

variable "region" {
  type    = string
  default = "us-chicago-1"
}

variable "availability_domain" {
  default = "waZW:US-CHICAGO-1-AD-3"
}

variable "default_fault_domain" {
  type    = list(any)
  default = ["FAULT-DOMAIN-1", "FAULT-DOMAIN-2", "FAULT-DOMAIN-3"]
}

variable "single_fault_domain" {
  type    = string
  default = "FAULT-DOMAIN-3"
}


variable "environment" {
  default = "dev"
}

variable "oci_core_vcn_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "oci_core_subnet_cidr10" {
  type    = string
  default = "10.0.0.0/24"
}

variable "oci_core_subnet_cidr11" {
  type    = string
  default = "10.0.1.0/24"
}

variable "oci_core_vcn_dns_label" {
  type    = string
  default = "defaultvcn"
}

variable "oci_core_subnet_dns_label10" {
  type    = string
  default = "publicsubnet10"
}

variable "oci_core_subnet_dns_label11" {
  type    = string
  default = "publicsubnet11"
}

variable "my_public_ip_cidr" {
  type        = string
  default     = "0.0.0.0/0"
  description = "My public ip CIDR"
}

variable "PATH_TO_PUBLIC_KEY" {
  type        = string
  default     = "./public-instance/keys/oci_instance_key.pub"
  description = "Path to your public key"
}

variable "is_private" {
  type    = bool
  default = false
}

variable "os_image_id" {
  default = "ocid1.image.oc1.us-chicago-1.aaaaaaaa7gho2rf5y2djyd4xvnpjgyide6hbr7vhsd5u2bp63shyu2phje2a" # Canonical-Ubuntu-22.04-aarch64-2023.07.20-0
}

variable "shape" {
  default = "VM.Standard.A1.Flex" # VM.Standard.E2.1.Micro
}

variable "memory_in_gbs" {
  default = "24"
}

variable "ocpus" {
  default = "4"
}

variable "boot_volume_size_in_gbs" {
  default = 100
}