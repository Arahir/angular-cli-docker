FROM node:7.4.0

RUN npm install -g angular-cli
RUN npm cache clean

RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# Copy all configuration files
COPY *.json ./

RUN git config --global url."https://".insteadOf git://
RUN npm install -q

# Copy source files
COPY *.js ./
COPY src/ src/

CMD ["ng", "serve", "--host", "0.0.0.0"]
