FROM archlinux:latest

RUN pacman -Sy && \
    pacman -S --noconfirm sudo texlive-core

RUN sed -i 's|$Master = "$Master/../..";|$Master = "${Master}/../../..";|' /usr/share/texmf-dist/scripts/texlive/tlmgr.pl
ENV tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'
RUN $tlmgr init-usertree
RUN $tlmgr option repository http://mirrors.rit.edu/CTAN/systems/texlive/tlnet
RUN for package in enumitem xifthen ifmtarg fontawesome sourcesanspro tcolorbox environ trimspaces roboto; do $tlmgr install $package; done

WORKDIR /build

COPY . .

ENTRYPOINT ["bash", "build_resume.sh"]
