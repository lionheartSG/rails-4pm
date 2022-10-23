import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="counter"
let currentCredit = 150
export default class extends Controller {
  static targets = ["credit", "cost", "value"]

  connect() {
  }

  increment(){
    let counter = this.valueTarget.innerText
    if ((counter == 3) || (currentCredit < this.costTarget.innerText)) {
      return
    } else {
      counter++
      this.valueTarget.innerText = counter
      let cost = this.costTarget.innerText
      currentCredit = currentCredit - parseFloat(cost)
      this.dispatch("increment", { detail: { content: currentCredit}})
    }
  }

  decrement(){
    let counter = this.valueTarget.innerText
    if (counter == 0) {
      this.valueTarget.innerText = 0
    } else {
      counter--
      this.valueTarget.innerText= counter
      let cost = this.costTarget.innerText
      currentCredit = currentCredit + parseFloat(cost)
      this.dispatch("decrement", { detail: { content: currentCredit}})
    }
  }
}
