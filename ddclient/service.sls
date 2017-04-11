{% from "ddclient/map.jinja" import ddclient with context %}

include:
  - ddclient.install

ddclient:
  service.running:
    - name: {{ ddclient.service }}
    - enable: True
    - require:
      - sls: ddclient.install

