FROM fedora:31

RUN dnf install -y texlive-collection-basic
RUN dnf install -y texlive-cyrillic

RUN dnf install -y 'tex(parskip.sty)'
RUN dnf install -y 'tex(titlesec.sty)'
RUN dnf install -y texlive-lh
RUN dnf install -y texlive-babel-russian
RUN dnf install -y 'tex(fontawesome.sty)'
RUN dnf install -y 'tex(cm-super-t2a.enc)'

WORKDIR /build

COPY . .
RUN chmod +x build_resume.sh
ENTRYPOINT ["./build_resume.sh"]
