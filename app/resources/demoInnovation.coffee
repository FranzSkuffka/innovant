# dummy innovation page data
#
tableHtml =
"""
<table contenteditable="true"><thead><tr><td>Feature</td><th>Basic</th><th>Premium</th><th>Pro</th></tr></thead><tbody><tr><td>Unlimited Streaming</td><td>X</td><td>X</td><td>X</td></tr><tr><td>Downloads</td><td></td><td>X</td><td>X</td></tr><tr><td>High Quality Streaming</td><td></td><td>X</td><td>X</td></tr><tr><td>Remixes</td><td></td><td></td><td>X</td></tr></tbody></table>
"""

inputs =
  range: ->
    type: 'range'
    label: 'ugly'
    labelHigh: 'attractive'
  textarea: ->
    type: 'textarea'

modules =

  hero: ->
    type: 'hero'

    content:
      Heading: 'Make a dent in the universe',
      Text: 'Our revolutionary concept is just great'
      Image: 'https://images.unsplash.com/photo-1458400411386-5ae465c4e57e?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&s=47756f965e991bf72aa756b410929b04'

    analytics:
      active: true
      question:
        text: 'How attractive do you find this design?'
        explanation: 'Please do not consider the color scheme.'
      inputs: [
        inputs.range()
        ,
        inputs.textarea()
        ]

  table: ->
    type: 'table'
    content:
      Heading: 'Compare our features',
      Table: tableHtml
    analytics:
      active: false

module.exports =

  complete: ->
    name: 'My new Product'
    colors:
      text: '#10CA7E'
      background: '#000'
    modules: [
      modules.hero()
      ,
      modules.table()
    ]

  modules: modules

  inputs: inputs