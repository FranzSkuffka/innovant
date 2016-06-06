Vue.use VueRouter

router    = new VueRouter()

overview  = require './components/overview.vue'
editor    = require './components/editor.vue'
viewer    = require './components/viewer.vue'

router.map
  '/':
    component: overview
    title: 'Übersicht'
  '/edit/:ID/:innovation_slug':
    component: editor
  '/:ID/:innovation_slug':
    component: viewer

App = Vue.extend()

router.start(App, '#app')
