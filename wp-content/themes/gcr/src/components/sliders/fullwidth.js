const el = document.querySelectorAll('*[data-slider=fullwidth]')
const options = {}

export default lory => {
  Array.prototype.slice.call(el).forEach(function (element) {
    lory(element, options)
  })
}
