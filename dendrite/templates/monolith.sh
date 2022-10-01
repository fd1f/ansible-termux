#!/data/data/com.termux/files/usr/bin/sh
cd {{ install_dir }}
exec ./bin/dendrite-monolith-server --config ./dendrite.yaml -really-enable-open-registration
