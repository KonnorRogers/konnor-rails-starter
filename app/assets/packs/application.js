// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from '@rails/ujs';
import '@hotwired/turbo-rails';
import * as ActiveStorage from '@rails/activestorage';
import '../channels/index.js';
import '../stylesheets/application.css';

import '../components/example-component/example-component.js';

// import { Application } from 'stimulus';
// import { definitionsFromContext } from 'stimulus/webpack-helpers';

// const application = Application.start();
// const context = require.context('./controllers', true, /\.js$/);
// application.load(definitionsFromContext(context));

// Import all images
require.context('../images', true);

Rails.start();
ActiveStorage.start();
