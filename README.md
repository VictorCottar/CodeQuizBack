## docker build
sudo docker build -t victorcottar/backendcodequiz:1.1 .

## docker tag
docker tag victorcottar/backendcodequiz:1.1 gru.ocir.io/grp8tekdz6ik/victor-docker-repo/backendcodequiz:1.1

## docker push
sudo docker push gru.ocir.io/grp8tekdz6ik/victor-docker-repo/backendcodequiz:1.1  

# instruções
Ir no instâncias de container
- Criar instância com a nova imagem, seguindo as mesmas configurações da instância anterior
- Ir no API gateway https://cloud.oracle.com/api-gateway/gateways -> implantações -> 3 pontos -> editar -> rotas, editar o gateway do back ou front e seguir as mesmas configs, mas mudando o ip da rota, para o ip novo gerado na etapa anterior