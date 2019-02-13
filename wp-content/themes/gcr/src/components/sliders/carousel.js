const el = document.querySelectorAll('*[data-slider=carousel]')
const options = {
  autoPlay: true,
  slideAutoPlaySpeed: 3000,
  enableMouseEvents: true,
  slideSpeed: 1000
}

export default (lory, autoPlay) => {
  Array.prototype.slice.call(el).forEach(function (element) {
    const numberOfSlider = element.querySelector('.slides').childElementCount

    let loryElement = lory(element, options)

    if (options.autoPlay && numberOfSlider > 4) {
      autoPlay(loryElement, element, options)
    }
  })
}
