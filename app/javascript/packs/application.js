// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("local-time").start()

window.Rails = Rails

import 'bootstrap'
import 'data-confirm-modal'

// tailor_made
import jquery from 'jquery'
import Chartkick from 'chartkick'
import Chart from 'chart.js'
import 'flatpickr'
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin'
import "flatpickr/dist/flatpickr.css";
import 'selectize'
import "selectize/dist/css/selectize.css";
import "selectize/dist/css/selectize.bootstrap3.css";

Chartkick.addAdapter(Chart)
window.Chartkick = Chartkick
window.rangePlugin = rangePlugin
window.jquery = jquery
window.$ = jquery

$(document).on("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})
