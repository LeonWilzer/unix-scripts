#!/bin/sh

EFI="/boot/efi/EFI"
cp -v "$EFI/GRUB/grubx64.efi" "$EFI/Microsoft/Boot/bootmgfw.efi"
