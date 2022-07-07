FROM aquabotwa/pramesh-nilakshan7:beta 

RUN git clone https://github.com/Prameshnilakshan7/AQUABOT-MD /root/aquabot
WORKDIR /root/aquabot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
