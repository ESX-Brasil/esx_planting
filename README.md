# esx_planting
Modificação criado pelo Servidor OESIS permitindo a produção de drogas cuja produção é baseada no plantio.<br>
![Script in Action](https://mwojtasik.pl/img_zarabiam/portfolio/fivem/1.png)

# Requisitos
* [es_extended](https://github.com/ESX-Brasil/es_extended)
* [pNotify](https://github.com/ESX-Brasil/pNotify)


## Uso
A aplicação do roteiro é permitir que os jogadores produzam drogas (ou talvez também outras plantas?), Exigindo que elas se integrem para completar o processo de fabricação de medicamentos.
O roteiro, devido à sua construção (saindo do chão), é adaptado para a produção de drogas que são produzidas pelo plantio.
A integração com o usuário consiste em escolher a resposta para a questão dada.
O roteiro é adaptado para diferentes combinações de perguntas e respostas e a possibilidade de adicionar vários tipos de drogas.
Para iniciar o processo de criação de uma droga, o jogador deve ter o item certo e estar no local definido para o medicamento administrado.

## Adicionando uma nova droga
A configuração é feita através do arquivo config.lua.
A adição de uma nova droga requer a criação de uma matriz aninhada na matriz principal "opções", mas lembre-se de que o nome da matriz criada deve corresponder ao nome do objeto que será necessário para iniciar o processo.
Um exemplo de iniciar a configuração:
```
Config.cancel_buttons - Array em que aninhamos uma lista de botões que fazem com que o processo de plantio seja interrompido.
options =
{
      seed_weed = { "Opção de configuração para um determinado item" },
}
```

## Update 27.04.2019 - Support multiple items
From now on you can add new items/drugs without taking care of the server/main.lua file.
The Config.CopsOnDuty variable was also removed from the server / main.lua file.
You can now set an independent number of required policemen on duty to start the proccess with it.


## opções de configuração para drogas especificado
###### Atualizar 27.04.2019
```
policiais - Os policiais de plantão necessários para iniciar o processo de plantio
```
###### Fim da atualização 27.04.2019
```
object - O nome do objeto que aparecerá após o início do processo ex. prop_weed_01
```
```
end_object - O nome do objeto que aparece após o processo ser concluído e a resposta para a última pergunta é respondida ex. prop_weed_02
```
```
fail_msg - Conteúdo da mensagem quando o jogador deu uma resposta incorreta
```
```
success_msg - O conteúdo da mensagem quando o jogador passa por todo o processo de criação
```
```
success_item = O nome do item que o jogador receberá após a conclusão bem-sucedida do processo (a quantidade é determinada na última pergunta que permite ao RNG o número de itens)
```
```
first_step - número de formato ex duplo. 2.24 responsável por 'pressionar' o objeto no solo no início do plantio
```
```
steps - O número de int que corresponde ao número de passos que o jogador tem que fazer, caso contrário - o número de questões
```
```
animations_start = {} - No meio deve ser Array de animações que são realizadas imediatamente após o início do processo de plantio
```
```
animations_start = {} - No meio deve ser Array de animações que são realizadas após a conclusão bem sucedida do processo de plantio
```
```
animations_step = {} -  No meio deve ser Array de animações que são realizadas após cada resposta à pergunta
```
```
grow - Uma lista de números duplos separados por uma vírgula correspondente a pressionar a planta no solo (simulação do crescimento da planta)
```
```
questions = {} - No meio deve ser ordenada, correspondendo à informação sobre cada uma das questões
```

## Um exemplo de Array para animação
```
animations_start = {
  {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '1'},
  {lib = 'amb@world_human_gardener_plant@male@idle_a', anim = 'idle_a', timeout = '1'},
}
```

## Um exemplo da Array responsável pela questão
```
{
    title = 'Sua planta está quase pronta para ser cortada, o que você dev fazer?',
    steps = {
        {label = 'Estou regando a planta', value = 1},
        {label = 'Eu fertilizo a planta', value = 2},
        {label = 'Aguardando', value = 3}
    },
    correct = 1
},
```

## Última pergunta e RNG
Como você pode ter aprendido anteriormente, a última pergunta contém informações quantitativas sobre o valor mínimo (máximo) e mínimo (mínimo) do produto final que um jogador pode receber.
Exemplo para a última pergunta:
```
{
    title = 'Sua planta está pronta para a colheita, o que você deve fazer?',
    steps = {
        {label = 'Colete usando uma tesoura', value = 1, min = 5, max = 25},
        {label = 'Colecione com as mãos', value = 1, min = 10, max = 15},
        {label = 'Cortar as tesouras de poda', value = 1, min = 2, max = 40}
    },
    correct = 1
}
```
