FROM polinux/mkdocs

RUN pip install \
    mkdocs-mermaid2-plugin \
    mkdocs-video \
    fontawesome-markdown \
    mkdocs-git-revision-date-localized-plugin \
    mkdocs-material \
    mkdocs-excalidraw \
    mkdocs-glightbox
