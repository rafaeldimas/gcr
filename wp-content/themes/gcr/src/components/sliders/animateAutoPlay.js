let options = {
  // Values received of object config
  loryElement: false,
  element: false,
  slideAutoPlaySpeed: false,

  stop: false,
  startTime: false,
  now: false,
  then: false,
  elapsed: false
}

const init = (config) => {
  options = Object.assign({}, options, config)

  options.then = options.startTime = Date.now()
  animate()

  options.element.addEventListener('mouseover', handleEvents)
  options.element.addEventListener('mouseout', handleEvents)
}

const handleEvents = e => {
  if (e.type === 'mouseover') {
    options.stop = true
  }

  if (e.type === 'mouseout') {
    resetTimer()
    options.stop = false
  }
}

const resetTimer = () => {
  options.now = Date.now()
  options.elapsed = options.now - options.then
  options.then = options.now - (options.elapsed % options.slideAutoPlaySpeed)
}

const animate = () => {
  window.requestAnimationFrame(animate)

  options.now = Date.now()
  options.elapsed = options.now - options.then

  if (options.elapsed > options.slideAutoPlaySpeed && !options.stop) {
    options.then = options.now - (options.elapsed % options.slideAutoPlaySpeed)
    options.loryElement.next()
  }
}

export default init
