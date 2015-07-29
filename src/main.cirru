
var
  React $ require :react

var
  Bottoming $ React.createFactory $ require :./bottoming
  div $ React.createFactory :div

var pageComponent $ React.createClass $ {}
  :displayName :app-page

  :getInitialState $ \ ()
    {} (:content $ [])

  :componentDidMount $ \ ()
    setInterval
      \\ ()
        this.setState $ {}
          :content $ this.state.content.concat
            + ":\nrandom: " (Math.random)
      , 700

  :render $ \ ()
    div ({} (:className :app-page))
      Bottoming null
        this.state.content.map $ \ (line index)
          div ({} (:key index)) line

var Page $ React.createFactory pageComponent

React.render (Page) document.body
