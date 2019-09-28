echo 'создание разделов'
(
  echo g;
  echo n;
  echo 1;
  echo;
  echo +20G;

  echo n;
  echo 2;
  echo;
  echo +500M;

  echo n;
  echo 3;
  echo;
  echo;

  echo w;
) | fdisk /dev/sdc

#root
mkfs.ext4 /dev/sdc1 -L root
mount /dev/sdc1 /mnt

#boot
mkfs.fat -F32 /dev/sdc2 -L boot
mkdir -p /mnt/boot/efi
mount /dev/sdc1 /mnt/boot/efi

#home
mkfs.ext4 /dev/sdc3 -L home
mkdir -p /mnt/home
mount /dev/sdc3 /mnt/home

echo 'Ваша разметка диска'
fdisk -l
