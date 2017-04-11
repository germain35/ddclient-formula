{% from "ddclient/map.jinja" import ddclient with context %}

include:
  - ddclient.install
  - ddclient.service

ddclient_cache:
  file.absent:
    - name: {{ ddclient.cache }}

ddclient_config:
  file.managed:
    - name: {{ ddclient.config }}
    - source: {{ ddclient.config_src }}
    - template: jinja
    - user: root
    - group: root
    - mode: 600
    - require: 
      - sls: ddclient.install
      - file: ddclient_cache
    - watch_in:
      - service: {{ ddclient.service }}
