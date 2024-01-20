# The Packer template is used to build a virtual machine that is used to create a Red Hat Enterprise Linux 8 virtual machine template that is used to create Red Hat Enterprise Linux 8 virtual machines using the Terraform VMware vSphere provider

## Prerequisites

* Packer
* Terraform
* VMware vSphere
* Red Hat Enterprise Linux 8 ISO

## Usage

## Packer

### Build

```bash
cd packer/linux/redhat_8
packer init .
packer build .
```

### Variables

| Variable | Description | Default |
| --- | --- | --- |
| `rhsm_username` | The username to Red Hat Subscription Manager | `sensitive/local.variable` |
| `rhsm_password` | The password to login to Red Hat Subscription Manager | `sensitive/local.variable` |
| `vsphere_endpoint` | The fully qualified domain name or IP address of the vCenter Server instance | `[informe a url do vcenter]` |
| `vsphere_username` | The username to login to the vCenter Server instance | `sensitive/local.variable` |
| `vsphere_password` | The password for the login to the vCenter Server instance | `sensitive/local.variable` |
| `vsphere_insecure_connection` | Do not validate vCenter Server TLS certificate | `false` |
| `vsphere_datacenter` | The name of the target vSphere datacenter | `COMUN-BR` |
| `vsphere_cluster` | The name of the target vSphere cluster | `[informe a url do vcenter]` |
| `vsphere_datastore` | The name of the target vSphere datastore | `CMB-DS-DMZ-TY-3141-7E25` |
| `vsphere_network` | The name of the target vSphere network segment | `CMB-DMZ-DATA-3061` |
| `vsphere_folder` | The name of the target vSphere cluster | `CMB-VMFOLDER-DMZ-LINUX-PRUEBAS` |
| `vm_guest_os_language` | The guest operating system lanugage | `en_US` |
| `vm_guest_os_keyboard` | The guest operating system keyboard input | `us` |
| `vm_guest_os_timezone` | The guest operating system timezone | `UTC` |
| `vm_guest_os_family` | The guest operating system family. Used for naming and VMware tools | `linux` |
| `vm_guest_os_name` | The guest operating system name. Used for naming | `rhel` |
| `vm_guest_os_version` | The guest operating system version. Used for naming | `8` |
| `vm_guest_os_type` | The guest operating system type, also know as guestid | `rhel8_64Guest` |
| `vm_firmware` | The virtual machine firmware | `efi` |
| `vsphere_template_disk_sharing` | The vSphere template disk sharing | `sharingNone` |
| `vsphere_template_disk_eagerly_scrub` | The vSphere template disk eagerly scrub | `false` |
| `vsphere_template_disk_io_limit` | The vSphere template disk I/O limit | `-1` |
| `vsphere_template_disk_io_reservation` | The vSphere template disk I/O reservation | `0` |
| `vsphere_template_disk_io_share_level` | The vSphere template disk I/O share level | `normal` |
| `vsphere_template_disk_io_share_count` | The vSphere template disk I/O share count | `1000` |
| `vsphere_template_disk_io_share_limit` | The vSphere template disk I/O share limit | `1000` |
| `vsphere_template_disk_io_share_reservation` | The vSphere template disk I/O share reservation | `0` |
| `vsphere_template_disk_io_share_share` | The vSphere template disk I/O share share | `normal` |
| `vsphere_template_disk_io_share_type` | The vSphere template disk I/O share type | `disk` |
| `vsphere_template_disk_io_share_limit` | The vSphere template disk I/O share limit | `1000` |
| `vsphere_template_disk_io_share_reservation` | The vSphere template disk I/O share reservation | `0` |
| `vsphere_template_disk_io_share_share` | The vSphere template disk I/O share share | `normal` |
| `vsphere_template_disk_io_share_type` | The vSphere template disk I/O share type | `disk` |
| `vsphere_template_disk_io_share_limit` | The vSphere template disk I/O share limit | `1000` |
| `vsphere_template_disk_io_share_reservation` | The vSphere template disk I/O share reservation | `0` |
| `vsphere_template_disk_io_share_share` | The vSphere template disk I/O share share | `normal` |
| `vsphere_template_disk_io_share_type` | The vSphere template disk I/O share type | `disk` |
| `vsphere_template_disk_io_share_limit` | The vSphere template disk I/O share limit | `1000` |
| `vsphere_template_disk_io_share_reservation` | The vSphere template disk I/O share reservation | `0` |
| `vsphere_template_disk_io_share_share` | The vSphere template disk I/O share share | `normal` |
| `vsphere_template_disk_io_share_type` | The vSphere template disk I/O share type | `disk` |
| `vsphere_template_disk_io_share_limit` | The vSphere template disk I/O share limit | `1000` |
| `vsphere_template_disk_io_share_reservation` | The vSphere template disk I/O share reservation | `0` |
| `vsphere_template_disk_io_share_share` | The vSphere template disk I/O share share | `normal` |
| `vsphere_template_disk_io_share_type` | The vSphere template disk I/O share type | `disk` |
| `vsphere_template_disk_io_share_limit` | The vSphere template disk I/O share limit | `1000` |
| `vsphere_template_disk_io_share_reservation` | The vSphere template disk I/O share reservation | `0` |
| `vsphere_template_disk_io_share_share` | The vSphere template disk I/O share share | `normal` |
| `vsphere_template_disk_io_share_type` | The vSphere template disk I/O share type | `disk` |
| `vsphere_template_disk_io_share_limit` | The vSphere template disk I/O share limit | `1000` |
| `vsphere_template_disk_io_share_reservation` | The vSphere template disk I/O share reservation | `0` |
| `vsphere_template_disk_io_share_share` | The vSphere template disk I/O share share | `normal` |
