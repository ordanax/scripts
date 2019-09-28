echo 'создание разделов'
(
  echo g;
  echo n;
  echo;
  echo;
  echo;
  echo +20G;

  echo n;
  echo;
  echo;
  echo;
  echo +500M;

  echo n;
  echo;
  echo;
  echo;
  echo;

  echo w;
) | fdisk /dev/sda

#root
mkfs.ext4 /dev/sda1 -L root
mount /dev/sda1 /mnt

#boot
mkfs.fat -F32 /dev/sda2 -L boot
mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi

#home
mkfs.ext4 /dev/sda3 -L home
mkdir -p /mnt/home
mount /dev/sda3 /mnt/home

echo 'Ваша разметка диска'
fdisk -l
