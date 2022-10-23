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

      fetch("/cart_items", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify(orders)
      })
    }, 1000);
  }
}
