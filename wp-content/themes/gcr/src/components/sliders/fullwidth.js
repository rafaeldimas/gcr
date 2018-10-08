const el = document.querySelectorAll('*[data-slider=fullwidth]')
const options = {
  autoPlay: true,
  slideAutoPlaySpeed: 3000,
  infinite: 1,
  enableMouseEvents: true,
  ease: 'cubic-bezier(0.68, -0.55, 0.265, 1.55)',
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
