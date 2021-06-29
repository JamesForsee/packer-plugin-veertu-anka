variable "source_vm_name" {
  type = string
  default = "anka-packer-base-macos"
}

variable "vm_name" {
  type = string
  default = "anka-packer-from-source"
}

source "veertu-anka-vm-clone" "anka-packer-from-source" {
  vm_name = "${var.vm_name}"
  source_vm_name = "${var.source_vm_name}"
  disk_size = "20G"
}

build {
  sources = [
    "source.veertu-anka-vm-clone.anka-packer-from-source",
  ]
}