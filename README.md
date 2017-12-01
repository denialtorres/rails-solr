# rails-solr
Rails App Using Solr search engine

when you use 

`@players = Player.where("first_name like ?", "%#{search_params[:term]}%")`

you get arount *388ms* to load the full page

![enter image description here](https://i.imgur.com/kBQloOz.png)

when you use Solr

you get *92* ro render all the page

![enter image description here](https://i.imgur.com/R0EJmLW.png)
