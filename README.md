# Middleman Boilerplate
A simple way to build static pages with a Rails feel.

## Using

- [Middleman](https://middlemanapp.com)
- [Yarn](https://yarnpkg.com)
- [webpack](https://webpack.js.org) with [Babel](https://babeljs.org)
- [Sass](https://sass-lang.com)

## Init a new project
1. Click the green `Use this Template` button and give your project a name
2. In the new project, click on the green `Code` button to copy your SSH address
3. `cd` into the folder named after your Github username in your Terminal
4. Clone the repository like this
`git clone git@github.com:dmbf29/NAME_OF_YOUR_PROJECT.git `
5. Move into the directory `cd NAME_OF_YOUR_PROJECT`

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
⚠️ You may run into some into some gem warnings.<br>
Warnings == 👌, but Fatal errors == ⛔️<br>
If you get a fatal error, you can try fixing it with `bundle update` and hope for the best 🤞

## Run a server
- `middleman`<br>
or if that fails, try 
- `bundle exec middleman`

## Deploy
1. [Sign into Netlify](https://www.netlify.com/)
2. Add new site from Git
3. Choose repository and branch
4. Make sure your deploy settings look like this:
<img width="400" alt="Screen Shot 2021-06-18 at 14 19 13" src="https://user-images.githubusercontent.com/25542223/122510271-49d34900-d040-11eb-853f-5105b5d48fcd.png">
5. Website is deployed!
6. (Add purchased domain)

## Meta Tags
To use the gem `middlman-metaman`, [follow these setup instructions](https://github.com/cacheventures/middleman-metaman/)

## Preinstalled
- [Bootstrap 4.6 CSS & JS](https://getbootstrap.com/docs/4.6/getting-started/introduction/)
- Font Awesome CDN
- Webpack

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
