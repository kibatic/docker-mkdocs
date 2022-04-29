Kibatic Mkdocs
==============

Basé sur polinux/mkdocs (merci aux devs).

Cette image ajoute juste le plugin mermaid2.

Quickstart
----------

Les fichiers sont à mettre dans le répertoire docs/.

exemple de config : mkdocs.yml

```yaml
site_name: Site title

## ajouter éventuellement une nav

#nav:
#    - Accueil: README.md
# ...

theme:
  name: material

markdown_extensions:
  - admonition
  - pymdownx.highlight:
      linenums: true
  - pymdownx.superfences:
      custom_fences:
        - name: mermaid
          class: mermaid
          format: !!python/name:mermaid2.fence_mermaid

# si vous voulez un style custom
# extra_css: [extra.css]

plugins:
  - mermaid2:
      version: 8.9.0
  - search
  - mkdocs-video
```

Exemple de docker-compose.yml (avec traefik2)

```yml
version: '3.8'

services:
  app:
    image: kibatic/mkdocs
    labels:
      - "traefik.http.services.mkdocs.loadbalancer.server.port=8000"
    environment:
      LIVE_RELOAD_SUPPORT: 'true'
      ADD_MODULES: 'fontawesome-markdown mkdocs-git-revision-date-localized-plugin mkdocs-material mermaid2'
      DOCS_DIRECTORY: '/mkdocs'
    volumes:
      - .:/mkdocs
```
