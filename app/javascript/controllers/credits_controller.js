import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="credits"
let currentCredit = 150
export default class extends Controller {
  static targets = ["credit", "cost"]

  connect() {
    console.log("Hello from credit controller")
  }

  deduct(){
    let cost = this.costTarget.innerText
    currentCredit = currentCredit - parseFloat(cost)
    this.dispatch("deduct", { detail: { content: currentCredit}})
  }

  add(){
    if (currentCredit < 150) {
      let cost = this.costTarget.innerText
      currentCredit = currentCredit + parseFloat(cost)
      this.dispatch("add", { detail: { content: currentCredit}})
    }
  }
}
