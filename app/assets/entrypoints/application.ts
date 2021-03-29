// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

/* eslint-disable */
import 'vite/dynamic-import-polyfill';
/* eslint-enable */

import '@hotwired/turbo-rails'
import * as ActiveStorage from '@rails/activestorage'
import '../channels/index'

import './application.css'

// import { registerControllers } from 'stimulus-vite-helpers';
// import { Application } from 'stimulus';

// const application = Application.start();
// const controllers = import.meta.globEager('./**/*_controller.js');
// registerControllers(application, controllers);

// Import all images
/* eslint-disable */
const images = import.meta.globEager('../images/**/*');
/* eslint-enable */

ActiveStorage.start()
