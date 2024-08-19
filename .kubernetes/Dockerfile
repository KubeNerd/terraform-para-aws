# Use a imagem oficial do Atlantis como base
FROM runatlantis/atlantis:v0.19.5

# Instalar ferramentas adicionais, se necessário
# Por exemplo, instalar o jq para manipular JSON
RUN apk add --no-cache jq

# # Copiar scripts personalizados para o container, se necessário
# COPY ./scripts /scripts

# Manter o comando padrão do Atlantis
CMD ["server"]
