const el = document.querySelectorAll('*[data-slider=fullwidth]')
const options = {
  infinite: 1,
  enableMouseEvents: true,
  ease: 'cubic-bezier(0.68, -0.55, 0.265, 1.55)',
  slideSpeed: 1000,
}

export default lory => {
  Array.prototype.slice.call(el).forEach(function (element) {
    lory(element, options)
  })
}
