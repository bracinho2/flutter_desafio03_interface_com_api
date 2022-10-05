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

## Responsividade

Requisitos:
Mobile e Desktop/Web
Design a sua escolha - Responsividade, Adaptatividade, Design system(monorepo, usar o melos)
Modular
Repository com datasource(interfaces)
Teste de unidade das camadas e do bloc
BLoC
Uno(Wrapper igual do ImagePicker)

Git/GitHub - (Conventional commits e Git Flow) 
Browse thousands of Weather images for design inspiration | Dribbble
Explore thousands of high-quality weather images on Dribbble. Your resource to get inspired, discover and connect with designers worldwide.
https://www.atlassian.com/br/git/tutorials/comparing-workflows/gitflow-workflow
Atlassian
Fluxo de trabalho de Gitflow | Atlassian Git Tutorial
Um mergulho profundo no fluxo de trabalho Gitflow. Aprenda se este fluxo de trabalho Git é o certo para você e sua equipe com este tutorial abrangente.