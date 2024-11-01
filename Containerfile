FROM fedora:41


RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN dnf config-manager addrepo --from-repofile=https://packages.microsoft.com/yumrepos/edge/config.repo
RUN dnf update -y --refresh && dnf install -y microsoft-edge-stable opensc
