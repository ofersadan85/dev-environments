FROM ofersadan85/dev:debian-npm
WORKDIR /
RUN npm create -y vite@latest work -- --template react-swc-ts
WORKDIR /work
RUN npm install

# Preview server at 4173 and dev server at 5173
EXPOSE 4173  
EXPOSE 5173
