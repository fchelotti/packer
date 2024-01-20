vm_inst_os_language                 = "en-US"
vm_inst_os_keyboard                 = "en-US"
vm_inst_os_image_standard_core      = "Windows Server 2019 SERVERSTANDARDCORE"
vm_inst_os_image_standard_desktop   = "Windows Server 2019 SERVERSTANDARD"
vm_inst_os_kms_key_standard         = "N69G4-B89J2-4G8F4-WWYCC-J464C"
vm_inst_os_image_datacenter_core    = "Windows Server 2019 SERVERDATACENTERCORE"
vm_inst_os_image_datacenter_desktop = "Windows Server 2019 SERVERDATACENTER"
vm_inst_os_kms_key_datacenter       = "WMDGN-G9PQG-XVVXX-R3X43-63DFG"

vm_guest_os_language           = "en-US"
vm_guest_os_keyboard           = "en-US"
vm_guest_os_timezone           = "UTC"
vm_guest_os_family             = "windows"
vm_guest_os_name               = "server"
vm_guest_os_version            = "2019"
vm_guest_os_edition_standard   = "standard"
vm_guest_os_edition_datacenter = "datacenter"
vm_guest_os_experience_core    = "core"
vm_guest_os_experience_desktop = "dexp"

vm_guest_os_type = "windows2019srv_64Guest"

vm_firmware              = "bios"
vm_cdrom_type            = "sata"
vm_cpu_count             = 2
vm_cpu_cores             = 1
vm_cpu_hot_add           = false
vm_mem_size              = 4096
vm_mem_hot_add           = false
vm_disk_size             = 102400
vm_disk_controller_type  = ["lsilogic-sas"]
vm_disk_thin_provisioned = true
vm_network_card          = "vmxnet3"

iso_checksum_type  = "sha256"
iso_checksum_value = "EA247E5CF4DF3E5829BFAAF45D899933A2A67B1C700A02EE8141287A8520261C"

vm_boot_order       = "disk,cdrom"
vm_boot_wait        = "2s"
vm_boot_command     = ["<spacebar>"]
vm_shutdown_command = "shutdown /s /t 10 /f /d p:4:1 /c \"Shutdown by Packer\""

communicator_port    = 5985
communicator_timeout = "12h"

scripts = ["scripts/windows/windows-prepare.ps1"]
inline = [
  "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))",
  "choco feature enable -n allowGlobalConfirmation",
  "Get-EventLog -LogName * | ForEach { Clear-EventLog -LogName $_.Log }"
]