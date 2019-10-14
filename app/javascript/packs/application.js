// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

  const initiateStripe = (stripeForm) => {
    const stripe = Stripe('pk_test_Go2keK39yfQ3pxYR2bpuewJ500aaZJcb0p')
    const elements = stripe.elements()
    let cardNumber = elements.create('cardNumber')
    let cardExpiry = elements.create('cardExpiry')
    let cardCVC = elements.create('cardCvc')
    cardNumber.mount('#card-number')
    cardExpiry.mount('#card-expiry')
    cardCVC.mount('#card-cvc')

    stripeForm.addEventListener('submit', () => {
      event.preventDefault()
      stripe.createToken(cardNumber, cardExpiry, cardCVC).then((result) => {
        const hiddenField = document.createElement('input')
        hiddenField.setAttribute('type', 'hidden')
        hiddenField.setAttribute('name', 'stripeToken')
        hiddenField.setAttribute('value', result.token)
        stripeForm.appendChild(hiddenField)
        stripeForm.submit()
      })
    })
  }

  document.addEventListener('turbolinks:load', () => {
    let stripeForm = document.getElementById('charge_form')
    if (stripeForm) {
      initiateStripe(stripeForm)
    }
  })

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import "../css/application.css"