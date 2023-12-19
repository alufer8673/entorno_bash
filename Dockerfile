FROM ubuntu:jammy

ARG USER_ID
ARG GROUP_ID
ARG USER_NAME
ARG GROUP_NAME

RUN apt update && apt install nano -y
RUN groupadd -g ${GROUP_ID} ${USER_NAME} && \
    useradd -m -u ${USER_ID} -g ${GROUP_ID} ${USER_NAME}

USER ${USER_NAME}

WORKDIR /home/${USER_NAME}

CMD /bin/bash