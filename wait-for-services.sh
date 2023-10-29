#!/bin/sh

# Função para verificar se um serviço Docker está pronto
wait_for_service() {
  local service_name="$1"
  until docker-compose ps -q "$service_name" | xargs docker inspect -f '{{.State.Status}}' | grep -q "running"; do
    echo "Esperando pelo serviço $service_name..."
    sleep 1
  done
  echo "O serviço $service_name está pronto."
}

# Esperar pelos serviços necessários
wait_for_service "dcs-postgres"
wait_for_service "dcs-pgadmin"

# Executar o comando de restauração
sh -c "pg_restore -h dcs-postgres -U pdv -d pdv /restore/db-postgre-pdv.tar"
