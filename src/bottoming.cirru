
var
  React $ require :react

var
  div $ React.createFactory :div

= module.exports $ React.createClass $ {}
  :displayName :origami-bottoming

  :componentDidMount $ \ ()
    var el $ this.getDOMNode
    = el.scrollTop el.scrollHeight

  :componentWillUpdate $ \ ()
    var el $ this.getDOMNode
    var allHeight el.scrollHeight
    var top el.scrollTop
    var height el.clientHeight
    = this.willUpdate
      > (+ top height) (- allHeight 10)
    return undefined

  :componentDidUpdate $ \ ()
    var el $ this.getDOMNode
    if this.willUpdate $ do
      = el.scrollTop el.scrollHeight
    return undefined

  :render $ \ ()
    div ({} (:className :origami-bottoming))
      , this.props.children
