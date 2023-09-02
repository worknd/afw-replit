{ pkgs }: {
    deps = [
        pkgs.pwgen
        pkgs.qrencode.bin
        pkgs.go-shadowsocks2
    ];
}
