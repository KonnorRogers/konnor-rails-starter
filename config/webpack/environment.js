const { environment } = require('@rails/webpacker');
const { ESBuildPlugin } = require('esbuild-loader');

const esBuildUse = [
  {
    loader: require.resolve('esbuild-loader'),
    options: { target: 'es2016' },
  },
];

environment.loaders.get('babel').use = esBuildUse;
environment.loaders.get('nodeModules').use = esBuildUse;
environment.plugins.append('EsBuildPlugin', new ESBuildPlugin());

module.exports = environment;
