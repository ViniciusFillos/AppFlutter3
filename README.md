# Aplicativo Flutter - Formulário com SharedPreferences

Este é um aplicativo Flutter que permite ao usuário inserir e armazenar seu nome e idade utilizando `SharedPreferences`. Os dados são carregados automaticamente ao reiniciar o aplicativo.

## Requisitos do Aplicativo

1. Criar uma tela que permita ao usuário salvar seu nome e idade usando `SharedPreferences`.
2. A tela deve conter:
   - Dois campos de entrada (`TextFormField`) para nome e idade.
   - Um botão `ElevatedButton` para salvar os dados.
   - Um texto exibindo o nome e a idade armazenados.
3. Quando o botão de salvar for pressionado:
   - Os dados devem ser armazenados em `SharedPreferences`.
   - O texto na tela deve ser atualizado com as informações salvas.
4. Quando o aplicativo for reiniciado, os dados armazenados devem ser carregados e exibidos automaticamente.


## Como Executar o Aplicativo

1. Certifique-se de que você tenha o Flutter instalado em sua máquina.
2. Crie um novo projeto Flutter ou adicione este código a um projeto existente.
3. Execute o comando `flutter pub get` para adicionar as dependências.
4. Execute o comando `flutter run` no terminal para iniciar o aplicativo.

## Funcionalidade em Detalhes

- **Nome e Idade**:
  - Entrada de dados por meio de `TextFormField`.
  - Validação simples para números no campo de idade.

- **Botão Salvar**:
  - Armazena os dados em `SharedPreferences`.
  - Atualiza a interface com os dados armazenados.

- **Persistência dos Dados**:
  - Ao reiniciar o aplicativo, os dados salvos são carregados automaticamente.


![image](https://github.com/user-attachments/assets/a279008a-e701-4aae-9c81-49ab17a1f94c)
![image](https://github.com/user-attachments/assets/d184b718-f3db-448b-b291-d8724a5bfa48)


