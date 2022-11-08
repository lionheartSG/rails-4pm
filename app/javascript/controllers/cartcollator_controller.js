import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cartcollator"
let orders = []

export default class extends Controller {
  connect() {
    console.log("hello from cartcollator")
  }

  collate(e) {
    // prevent default before doing anything else
    e.preventDefault()

    setTimeout(() => {
      const allInCart = document.querySelectorAll(".value")
      // console.log(allInCart)
      // console.log(allInCart[2].innerText)
      // console.log(allInCart[2].dataset.id)

      orders = Array.from(allInCart).map(cart => ({
          id: cart.dataset.id,
          quantity: cart.innerText
        })).filter(cartItem => cartItem.quantity > 0)

        console.log({ cart_items: orders });

      fetch("/create", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ cart_items: orders })
      })
        .then((response) => response)
        .then((data) => {
          console.log('Success:', data)
          window.location ="./confirmed"
        })
        .catch((error) => {
          console.error('Error:', error)
        })
    }, 1000);
  }
}
