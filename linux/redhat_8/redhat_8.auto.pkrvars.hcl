vm_guest_os_language = "en_US"
vm_guest_os_keyboard = "us"
vm_guest_os_timezone = "UTC"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "rhel"
vm_guest_os_version  = "8"

vm_guest_os_type = "rhel8_64Guest"

vm_firmware              = "efi"
vm_cdrom_type            = "sata"
vm_cpu_count             = 2
vm_cpu_cores             = 1
vm_cpu_hot_add           = false
vm_mem_size              = 2048
vm_mem_hot_add           = false
vm_disk_size             = 40960
vm_disk_controller_type  = ["pvscsi"]
vm_disk_thin_provisioned = true
vm_network_card          = "vmxnet3"
vsphere_insecure_connection=true

iso_url            = null
// iso_path           = "ISO/Linux/RedHat_8.6/"
// iso_file           = "rhel-8.6-x86_64-dvd.iso"
iso_checksum_type  = "sha256"
iso_checksum_value = "c324f3b07283f9393168f0a4ad2167ebbf7e4699d65c9670e0d9e58ba4e2a9a8"

vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

communicator_port    = 22
communicator_timeout = "10m"
