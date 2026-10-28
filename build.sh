#!/usr/bin/env bash
# Dựng index.html (trang chạy trên GitHub Pages) từ cham-phieu-hoa.html (bản nguồn, cũng là bản đăng lên Claude).
# Chạy trong Git Bash: bash build.sh
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="vi">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="theme-color" content="#1d4f7c">\n<meta name="mobile-web-app-capable" content="yes">\n<meta name="apple-mobile-web-app-capable" content="yes">\n'
  printf '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px/1.4 system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  printf '</head>\n<body>\n'
  cat cham-phieu-hoa.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "Đã tạo index.html"
