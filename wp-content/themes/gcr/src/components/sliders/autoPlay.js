export default (loryElement, options) => {
  const slideAutoPlaySpeed = options.slideAutoPlaySpeed || 5000

  setInterval(() => {
    loryElement.next()
  }, slideAutoPlaySpeed)
}
