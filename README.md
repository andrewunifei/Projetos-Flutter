# Projetos-Flutter
Repositório para manter os projetos feitos com Flutter no curso [The Complete 2021 Flutter Development Bootcamp with Dart (Udemy)](https://www.udemy.com/course/flutter-bootcamp-with-dart/).

## Índice
- [Projeto 1](#projeto-i-am-rich)
- [Projeto 2](#projeto---mi-card)

## Projeto - I am rich
[Link do projeto nesse repositório](https://github.com/andrewunifei/Projetos-Flutter/tree/main/i_am_rich)

Nessa sessão são apresentadas a função _main()_ do Dart e a função _Scaffold()_ e suas principais propriedades que agem como um esqueleto de um aplicativo Flutter.

O projeto dessa sessão é uma parodia do aplicativo "I am rich":

<img src="https://github.com/andrewunifei/Projetos-Flutter/blob/main/Recursos/i%20am%20rich.png" alt="drawing" width="300"/>

<hr>

## Projeto - Mi card
[Link do projeto nesse repositório](https://github.com/andrewunifei/Projetos-Flutter/tree/main/mi_card_flutter)

Os principais _widgets_ apresentados nessa sessão são: _Container_, _Column_, _Row_, _SafeArea_, _Card_ e _ListTile_. Também aprendemos como manipulá-los. Além disso, aprendemos como adicionar novas fontes e imagens para um projeto Flutter.

O projeto dessa sessão é um cartão de apresentação:

<img src="https://github.com/andrewunifei/Projetos-Flutter/blob/main/Recursos/mi%20card.png" alt="drawing" width="300"/>


<hr>

## Projeto "Dicee" (Sessão 7)
[Link do projeto nesse repositório](https://github.com/andrewunifei/Projetos-Flutter/tree/main/dicee-flutter)

Nessa sessão são apresentados alguns mecanismos da linguagem Dart: funções, variáveis estaticamente e dinamicamente tipadas e importação de bibliotecas. Também são apresentados conceitos do Flutter como _StateLess widgets_, _StateFul widgets_ e _setState()_.

A ideia do projeto dessa sessão é construir uma interface onde o usuário interage com dois dados. Quando um dos dados é tocado, gera-se valores aleatórios para ambos:

![Dicee](https://media.giphy.com/media/W9W37ADGMYaMvm1vPl/giphy.gif)

<hr>

## Projeto "Magic 8 ball" (Sessão 8)
[Link do projeto nesse repositório](https://github.com/andrewunifei/Projetos-Flutter/tree/main/magic-8-ball-flutter)

Essa sessão é um reforço, o projeto desenvolvido aqui aplica os mesmos conceitos da sessão anterior. A ideia é um app que responde perguntas:

![Magic 8 ball](https://media.giphy.com/media/txO9HxVmJxMZY8uB6a/giphy.gif)

<hr>

## Projeto "Xylophone" (Sessão 9)
[Link do projeto nesse repositório](https://github.com/andrewunifei/Projetos-Flutter/tree/main/xylophone-flutter)

Nessa sessão a ideia de importar bibliotecas é aprofundada. Exploramos o site [pub.dev](https://pub.dev/) para encontrar pacotes e documentações. Além disso, vimos retornos e parâmetros de funções não convencionais em outras linguagens de programação, como o retorno _Widget_ e o parâmetro _MaterialColor_, ambos característicos do Flutter. Um exemplo de função nesse proejto que faz uso desses conceitos:

```dart
Widget buildkey(String track, MaterialColor color){
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: (){
            this.playNote(track);
          },
        ),
      ),
    );
  }
```

A ideia do projeto é a construção de um xilofone utilizando os métodos da biblioteca [audioplayers](https://pub.dev/packages/audioplayers) para integrar efeitos sonoros manipulando arquivos de áudio. Cada botão do aplicativo toca um som diferente. Infelizmente não é possível reproduzir os áudios nesse documento. O app:

![Xylophone](https://media.giphy.com/media/SeiQA4arIvgVr3KIB4/giphy.gif)

## Projeto "Quizzler" (Sessão 10)

Nessa sessão foi explorado o conceito de orientação a objetos na linguagem Dart. O projeto utilizou de objetos para realizar comunicações entre diferentes componentes do código e para armanezar informações.

A ideia do projeto é um aplicativo de perguntas e respostas:

![Quizzler](https://media.giphy.com/media/gnf8ehdOnPblmbzaay/giphy.gif)

## Projeto "Destini" (Sessão 11)
[Link do projeto nesse repositório](https://github.com/andrewunifei/Projetos-Flutter/tree/main/destini-challenge-starting)

Esse projeto visa reforçar os conceitos aprendidos na sessão anterior.

A ideia do projeto é um aplicativo de escolha de decisões e as consequências dentro de uma história:

![Destini](https://media.giphy.com/media/PRhSYudLSSoma2uP8S/giphy.gif)

## Projeto "BMI Calculator" (Sessão 12)
[Link do projeto nesse repositório](https://github.com/andrewunifei/Projetos-Flutter/tree/main/bmi-calculator-flutter)

Nessa sessão, primeiramente, aprendemos como construir temas personalizados no Flutter que serão refletidos em todas as páginas do aplicativo (por exemplo: cores e fonte).

A ideia do projeto é um aplicativo de calculadora de BMI (Índice de massa corporal). A interface é inspirada no [design](https://dribbble.com/shots/4585382-Simple-BMI-Calculator) do Ruben Vaalt.
