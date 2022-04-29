FROM polinux/mkdocs

RUN pip install mkdocs-mermaid2-plugin mkdocs-video

RUN apk add --no-cache rsync
