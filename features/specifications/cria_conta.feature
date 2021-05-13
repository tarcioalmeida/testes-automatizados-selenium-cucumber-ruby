# language: pt
Funcionalidade: Criar uma conta no facebook
    Como usuario de redes sociais
    Eu quero criar uma conta no facebook a partir do site facebook.com
    A fim de entrar na rede social.

Cenário: criar conta do Facebook preenchendo todos os campos
    Dado a página inicial do site do Facebook, sem estar logado
    Quando apresentar o botão Criar nova conta
    E Clicar no botão Criar nova conta
    E Preencher todos os campos
    E Acionar o botão Cadastre-se
    Então Apresentar mensagem de sucesso