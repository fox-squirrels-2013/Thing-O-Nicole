Thing-O-Nicole
==============

### Release 1

1) Choose Your Thing-O

I'm choosing to cover different technical facets of television and movie screens, like aspect ratios, analog vs digital (i.e., film vs digital), and television systems.

2) Create a Repo

I created the repo with myself as the owner at first, but that was the incorrect way to do it. So, to fix that, I went into the repo settings, clicked "Transfer Repo," and then made fox-squirrels-2013 the owner.

To create a repo, I simply clicked the "Create a Repo" button in the upper right hand corner of GitHub. 

4) Create the Routes

To create the routes to make the app, simply type:

```ruby
get '/' do
  erb :index
end
```

Get gets the information from the server. In this case, it's the index.erb file. It displays in the root folder, so it can be accessed from the domain, i.e. example.com. 

Next, the erb file is created. It contains all of the HTML for the app, and contains all of the front-end information. A stylesheet is also included in the Public folder in order to make it look pretty and readable. 

Now, I've made a Heroku account, and am now downloading the Heroku Toolbelt. 

I've encountered some errors with Heroku. I need a Gemfile, a Gemfile.lock (generated during bundle), and config.ru. It shows up on localhost, but now it's really screwing up with Heroku. I'll investigate the situation in detail.

The errors were fixed for now by simply putting the CSS in styles. We need to cover how to use a public folder with an external stylesheet.

Here's the Heroku app: [Thing-O-Nicole Heroku](http://thing-o-nicole.herokuapp.com/).

