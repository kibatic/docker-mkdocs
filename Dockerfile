FROM polinux/mkdocs

RUN pip install mkdocs-mermaid2-plugin mkdocs-video

RUN pip install fontawesome-markdown mkdocs-git-revision-date-localized-plugin mkdocs-material
