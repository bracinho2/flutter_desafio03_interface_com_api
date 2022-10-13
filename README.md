# Desafio 03 - Interface Mobile com API

Neste desafio iremos realizar o consumo de uma API de previsão do tempo. O desafio consiste na criação de um pequeno aplicativo que mostre a previsão do tempo de uma cidade que será informada pelo usuário. Além disso, precisaremos trabalhar com as noções de responsividade e adaptatividade, ou seja, a aplicação deverá responder a diferentes telas de um mesmo tipo de dispositivo e também deverá se adaptar entre diferentes dispositivos. Estas decisões deverão ser tomadas automaticamente pela aplicação com base na coleta do tamanho de tela do dispositivo. Para alcançar este objetivo trabalharemos com um recurso nativo do Flutter: MediaQuery.

## Melos
Quando trabalhamos em um projeto com vários pacotes necessitamos de uma ferramenta que possa nos facilitar a atualização de tudo que está envolvido com alguns cliques. A ferramenta Melos resolve este problema facilmente e com o mínimo de esforço possível. Basicamente para utilizar o Melos basicamente precisamos de duas coisas:
    - Precisamos criar o arquivo yaml;
    - Precisamos ativar o melos para utilizar;

## Consumir a API
No desafio devemos consumir a seguinte API:
    - https://goweather.herokuapp.com/weather/Curitiba;


## Modular
Por que usar o modular? Quando desejamos construir aplicativos que possam funcionar com arquitetura limpa, com injeções de dependência, com gestão de rotas vamos precisar de alguém que possa fazer a orquestração de todos estes elementos. O modular entra em cena para organizar especialmente as injeções e a gestão de rotas para facilitar a navegação;

## Reatividade
Um dos assuntos mais badalados no mundo do Flutter é a questão da Reatividade. O que é a reatividade? É a capacidade de atualizarmos uma tela conforme necessitamos apresentar informações na tela; Neste desafio utilizaremos o Bloc Pattern que é amplamente conhecido e utilizado em empresas brasileiras. Basicamente precisamos entender dois conceitos básicos:

    - evento;
    - estado;

Como funciona? Sempre que dispararmos um evento nós teremos a atualização do estado da tela, ou seja, cada estado pode definir um comportamento da tela. Nestes estados que são respostas a eventos podem carregar entidades ou lista de entidades e/ou comportamentos desejáveis de apresentação;

Dica importante: atente-se para os métodos dentro da classe principal do Bloc: são eles que irão receber um evento e emitir um estado!

## Responsividade & Adaptatividade
Para termos aplicativos que respondam aos nossos anseios e sonhos devemos ter claras as noções de Responsividade e Adaptatividade. Afinal de contas, o que elas são e o que cada uma delas faz?

Responsividade: com este conceito alcançamos um objetivo bastante simples, porém, importantíssimo em nossas aplicações: com ele conseguimos tornar as telas de nossos aplicativos flexíveis, ou seja, elas conseguem se adaptar conforme o tamanho da tela de cada dispositivo, obviamente, dentro de uma classe específica, como por exemplo, a classe celular;

Adaptatividade: com este conceito nós alcançamos um outro objetivo que está em sintonia com a utilização do próprio Flutter, que é a capacidade de aproveitarmos o mesmo código para apresentarmos nossas aplicações em diferentes dispositivos, como um dispositivo WEB ou Mobile. Aqui a ideia é a seguinte: dar condições para que nossa aplicação tome a decisão de qual elemento será mostrado em tela de acordo com alguma regra. Obviamente, por escolha nossa, utilizaremos o recurso do MediaQuery do Flutter para coletar o tamanho da tela do dispositivo em questão para subsidiar a decisão de qual Widget será exibido. Logo, poderemos mostrar nosso Widget de celular em celular e o Widget de web na web. Parece simples, no entanto, precisamos ter uma estratégia bem definida para darmos a melhor experiência possível para nosso usuário.

## Arquitetura Limpa
O desafio solicitou construir uma pequena arquitetura com Repositorio(Repository) e Fonte de Dados (Datasource). No entanto, como nosso estudo prévio foi baseado na proposta de Arquitetura Limpa da Flutternado optamos em desenvolver este projeto com estas noções mais aproximadas para favorecer os testes das camadas, que deverão ser realizados.

Recomendo o estudo da proposta da comunidade brasileira sobre arquitetura limpa para melhor entendimento. São noções muito importantes e que são utilizadas nas grandes empresas. 

Link: https://github.com/Flutterando/Clean-Dart

## Service
Para o consumo de API necessitamos de um cliente HTTP. Podemos utilizar algumas das opções disponíveis no site de repositório pub.dev! No entanto, uma das estratégias para trabalharmos com um cliente de http que poderá ser facilmente substituído com baixo acoplamento e alta coesão é a utilização de um Service Pattern. Vale lembrar que o uso de uma classe abstrata como contrato é importante para poder também realizar uma possível mudança de clientes. Lembrem-se do Strategy Pattern!

Outra dica importante é que um pacote deve ficar encapsulado e o retorno de dados deve ser um retorno de tipos conhecidos pelo programa, ou seja, o pacote com o cliente http fica encapsulado. Uma dica é pensar em uma estratégia de organizar uma interface (classe abstrata) que contenha a regra de negócio para consulta e, depois, realizar a implementação do pacote escolhido (neste desafio utilizaremos o Uno). Vale ressaltar que a ideia é que o cliente http passe para o datasource do projeto a resposta que ele conseguir da api. Atente-se para o retorno que pode ser um JSON, uma lista, um mapa, etc;


## Teste de Unidade das Camadas e do Bloc

    - Testes de Unidade;
    Num primeiro momento o teste de unidade é um pouco complexo para o programador iniciante. Embora conceitualmente falando este teste seja fácil de realizar a nomenclatura e as ferramentas para colocar em prática um primeiro teste não é fácil. Sabemos que no Dart/Flutter. Posso dar algumas dicas interessantes que lhe auxiliarão no estudo dos testes. NO meu caso específico consegui realizar os testes após algum tempo por conta de que construi este aplicativo com vistas na filosofia da Arquitetura Limpa com o uso forte dos Conceitos do SOLID mais o conceito de Injeção de Dependências.
        - Dica 01: Utilize a suite de teste nativa do Flutter e utilize os métodos setUp e tearDown para iniciar e finalizar o teste respectivamente;
        - Dica 02: Dentro do método test(){} utilize algum pacote para testes; no meu caso estou de mocktail. A sacada importante para utilização é aprender fazer o mock da dependência da classe à qual você deseja testar.
        - Dica 03: No método when() lembre-se da ideia de que você deve fazer este método responder com o conteúdo da classe mockada, ou seja, este método literalmente fará um fake da chamada para que você não necessite depender de outras classes no teste de unidade;
        - Dica 04: Atente-se para o método Expect() no qual você deverá ter um dado e deverá ter um "matcher" ou seja, um dado que será comparado com outro cumprindo a condição do teste;

    - Teste de Bloc;
    Para tester o Bloc vale a leitura do item anterior. No caso do bloc existem algumas particularidades com as quais deve-se ter máxima atenção para tornar o teste mais fácil.


Extensões do vsCode: flutter_coverage, coverage_gutters
Package: full_coverage

## Git > Convencional Commits versus Git Flow
https://www.atlassian.com/br/git/tutorials/comparing-workflows/gitflow-workflow



