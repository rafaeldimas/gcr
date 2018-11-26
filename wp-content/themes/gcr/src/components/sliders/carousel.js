const el = document.querySelectorAll('*[data-slider=carousel]')
const options = {
  autoPlay: true,
  slideAutoPlaySpeed: 3000,
  enableMouseEvents: true,
  slideSpeed: 1000
}

export default (lory, autoPlay) => {
  Array.prototype.slice.call(el).forEach(function (element) {
    let loryElement = lory(element, options)

    if (options.autoPlay) {
      autoPlay(loryElement, options)
    }
  })
}
