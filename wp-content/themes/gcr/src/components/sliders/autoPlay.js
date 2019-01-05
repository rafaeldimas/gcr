import animateAutoPlay from './animateAutoPlay'

export default (loryElement, element, options) => {
  const slideAutoPlaySpeed = options.slideAutoPlaySpeed || 5000

  animateAutoPlay({ loryElement, element, slideAutoPlaySpeed })
}
