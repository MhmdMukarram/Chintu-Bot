FROM chintubotwa/MhmdMukarram:md-beta

RUN git clone https://github.com/MhmdMukarram/Chintu-Bot /root/chintubot
WORKDIR /root/chintubot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]


