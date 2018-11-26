const extraServiceInputName = document.querySelector('input[name="extra-services-name"]')
const formInputYourName = document.querySelector('input[name="your-name"]')

const extraServiceMessage = document.querySelector('*[data-extra-service-message]')
const extraService = document.querySelectorAll('*[data-extra-service-name]')

Array.prototype.slice.call(extraService).forEach(function (element) {
    element.addEventListener('click', function(e) {
        e.preventDefault()

        extraServiceInputName.value = this.dataset.extraServiceName
        extraServiceMessage.innerHTML = this.dataset.extraServiceDescription

        formInputYourName.focus()
    }, true)
})
