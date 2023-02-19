# Bootcamp Linux do zero - Script de Provisionamento de um Servidor Web - Desafio de projeto

IaC - Provisionamento de um servidor web no Linux Ubuntu e deploy de um projeto HMTL.  
Desafio de projeto da [DIO](https://dio.me) ministrado pelo professor [Denilson Bonatti](https://www.linkedin.com/in/denilsonbonatti).

## Definições
- Restaurar o snapshot criado anteriormente no virtualbox;
 -Atualizar o servidor;
- Instalar o apache2;
- Instalar o unzip;
- Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
- Copiar os arquivos da aplicação no diretório padrão do apache;
- Subir arquivo de script para um repositório no GitHub.

## Execução
1. Para executar este script no seu servidor, digite o seguinte comando para baixa-lo:

```bash
wget https://github.com/jpmjunior/iac-provisionamento-servidor-web/raw/main/prov-servidor-web.sh
```

2. Dê permissão de execução ao script:

```bash
chmod +x prov-servidor-web.sh
```

3. Execute o script com privilégios de administrador:

```bash
sudo ./prov-servidor-web.sh
```
