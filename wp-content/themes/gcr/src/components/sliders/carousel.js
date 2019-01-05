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
    if (numberOfSlider > 2) {
      options.infinite = 1
    }
    console.log(numberOfSlider)
    let loryElement = lory(element, options)
    console.log(numberOfSlider)

    if (options.autoPlay && numberOfSlider > 2) {
      autoPlay(loryElement, element, options)
    }
  })
}
