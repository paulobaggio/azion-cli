# Imagem base com Go 1.20
FROM golang:1.20

# Crie um diretório de trabalho dentro do container
WORKDIR /go/src/app

# Copie o conteúdo do diretório local para o diretório de trabalho do container
COPY . .

# Execute o comando make build quando o container for iniciado
CMD ["make", "build"]

# Defina a variável de ambiente PATH com o diretório bin do Go
ENV PATH="/go/bin:${PATH}"