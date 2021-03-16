# Middleman Boilerplate
A simple way to build static pages with a Rails feel.

## Using

- [Middleman](https://middlemanapp.com)
- [Yarn](https://yarnpkg.com)
- [webpack](https://webpack.js.org) with [Babel](https://babeljs.org)
- [Sass](https://sass-lang.com)

## Init a new project
1. Clone the repository `git clone git@github.com:dmbf29/middleman-boilerplate.git` `NAME_OF_YOUR_PROJECT`
2. Move into the directory `cd NAME_OF_YOUR_PROJECT`
2. Remove template git `rm -rf .git`
3. Start a new git repo `git init`
4. Create repo on Github `gh repo create`

### Installation
*Only if you don't have bundler or yarn*
```
gem install bundler
brew install yarn
```
Then:
```
gem install middleman
bundle install
yarn install
```

## Run a server
- `middleman`

## Deploy
1. [Sign into Netlify](https://www.netlify.com/)
2. Add new site from Git
3. Choose repository and branch
4. Website is deployed!
5. (Add purchased domain)

## Meta Tags
To use the gem `middlman-metaman`, [follow these setup instructions](https://github.com/cacheventures/middleman-metaman/)

## Preinstalled
- Bootstrap CSS & JS
- Font Awesome CDN
- Webpack

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
