FROM alpine:3.12.1
RUN apk add --no-cache ansible=2.10.1-r0 openssh-client rsync
ENV ANSIBLE_GATHERING smart
ENV ANSIBLE_HOST_KEY_CHECKING false
ENV ANSIBLE_RETRY_FILES_ENABLED false
ENV ANSIBLE_ROLES_PATH /ansible/playbooks/roles
ENV ANSIBLE_SSH_PIPELINING True
ENV PYTHONPATH /ansible/lib
ENV PATH /ansible/bin:$PATH
ENV ANSIBLE_LIBRARY /ansible/library
WORKDIR /ansible/playbooks
ENTRYPOINT ["ansible-playbook"]