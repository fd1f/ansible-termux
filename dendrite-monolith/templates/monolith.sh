#!/data/data/com.termux/files/usr/bin/sh
exec {{ install_dir }}/bin/dendrite --config {{ install_dir }}/dendrite.yaml
