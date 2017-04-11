{% from "ddclient/map.jinja" import ddclient with context %}

ddclient_packages:
  pkg.installed:
    - pkgs: {{ ddclient.packages }}
