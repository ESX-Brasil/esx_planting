Config = {}
Config.Locale = "br" -- Traduções disponives br, pl
--Você pode adicionar aqui Botões como botão do menu de inventário. Quando o jogador clicar nesse botão, a ação será cancelada.
Config.cancel_buttons = {289, 170, 168, 56}

options =
{
  ['seed_weed'] = {
        object = 'prop_weed_01',
        end_object = 'prop_weed_02',
        fail_msg = 'Infelizmente, sua planta murchou!',
        success_msg = 'Parabéns, você fez a colheita da planta!',
        start_msg = 'Eu começei a cultivar uma planta.',
        success_item = 'weed',
        cops = 0,
        first_step = 2.35,
        steps = 7,
        cords = {
          {x = -427.05, y = 1575.25, z = 357, distance = 20.25},
          {x = 2213.05, y = 5576.25, z = 53, distance = 10.25},
          {x = 1198.05, y = -215.25, z = 55, distance = 20.25},
          {x = 706.05, y = 1269.25, z = 358, distance = 10.25},
        },
        animations_start = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim = 'idle_a', timeout = '2500'},
        },
        animations_end = {
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
          {lib = 'amb@world_human_cop_idles@male@idle_a', anim ='idle_a', timeout = '2500'},
        },
        animations_step = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim ='idle_a', timeout = '18500'},
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
        },
        grow = {
          2.24, 1.95, 1.65, 1.45, 1.20, 1.00
        },
        questions = {
            {
                title = 'Você vê que sua planta está brotando, o que você deve fazer?',
                steps = {
                    {label = 'Estou regando a planta', value = 1},
                    {label = 'Eu fertilizo a planta', value = 2},
                    {label = 'Aguardando', value = 3}
                },
                correct = 1
            },
            {
                title = 'Pontos amarelos apareceram na minha planta, o que você deve fazer?',
                steps = {
                    {label = 'Estou regando a planta', value = 1},
                    {label = 'Eu fertilizo a planta', value = 2},
                    {label = 'Aguardando', value = 3}
                },
                correct = 2
            },
            {
                title = 'Sobre as folhas de suas plantas apareceu pó azul, o que você deve fazer?',
                steps = {
                    {label = 'Eu quebro as folhas individuais', value = 1},
                    {label = 'Polvilhe as folhas com fertilizante', value = 2},
                    {label = 'Aguardando', value = 3}
                },
                correct = 3
            },
            {
                title = 'Seus primeiros brotos apareceram na sua fábrica, o que você deve fazer?',
                steps = {
                    {label = 'Estou regando a planta', value = 1},
                    {label = 'Eu os separo imediatamente', value = 2},
                    {label = 'Eu fertilizo a planta', value = 3}
                },
                correct = 1
            },
            {
                title = 'Depois de molhar sua planta, folhas estranhas começaram a aparecer, o que você deve fazer?',
                steps = {
                    {label = 'Estou regando a planta', value = 1},
                    {label = 'Eu fertilizo a planta', value = 2},
                    {label = 'Aguardando', value = 3}
                },
                correct = 2
            },
            {
                title = 'Sua planta está quase pronta para ser cortada, o que você deve fazer?',
                steps = {
                    {label = 'Estou regando a planta', value = 1},
                    {label = 'Eu fertilizo a planta', value = 2},
                    {label = 'Aguardando', value = 3}
                },
                correct = 1
            },
            {
                title = 'Sua planta está pronta para a colheita, o que você deve fazer?',
                steps = {
                    {label = 'Colete usando uma tesoura', value = 1, min = 5, max = 25},
                    {label = 'Colete com as mãos', value = 1, min = 10, max = 15},
                    {label = 'Cortar com umas tesouras de poda', value = 1, min = 2, max = 40}
                },
                correct = 1
            },
        },
      },
}
