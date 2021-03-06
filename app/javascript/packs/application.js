// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
import 'bootstrap/dist/js/bootstrap'
import 'bootstrap/dist/css/bootstrap'
import "@fortawesome/fontawesome-free/css/all"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require('datatables.net-bs4')
Rails.start()
Turbolinks.start()
ActiveStorage.start()

import $ from 'jquery';
import ApexCharts from 'apexcharts';
import toastr from 'toastr'
import Swal from 'sweetalert2'
require('moment');

window.jQuery = $;
window.$ = $;
global.$ = jQuery;
window.Rails = Rails;
global.toastr = toastr;
global.Swal = Swal;
window.toastr = toastr
window.ApexCharts = ApexCharts; // return apex chart
import 'bootstrap'
import appInit from './metronic/app.init';
import "../../assets/stylesheets/application.scss"
document.addEventListener('DOMContentLoaded', appInit);