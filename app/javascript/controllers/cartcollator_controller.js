import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cartcollator"
let orders = []

export default class extends Controller {
  connect() {
    console.log("hello from cartcollator")
  }

  collate(e) {
    setTimeout(() => {
      e.preventDefault()

      const allInCart = document.querySelectorAll(".value")
      // console.log(allInCart)
      // console.log(allInCart[2].innerText)
      // console.log(allInCart[2].dataset.id)
      allInCart.forEach(function (cart) {
        let newEntry = {
          id: cart.dataset.id,
          quantity: cart.innerText
        }
        orders.push([newEntry])
      })

      // console.log(JSON.stringify(orders))

      fetch("/create", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify(orders)
      })
        .then((response) => response)
        .then((data) => {
          console.log('Success:', data)
          window.location ="./confirmed?id=1" //interpolate params here
        })
        .catch((error) => {
          console.error('Error:', error)
        })
    }, 1000);
  }
}
