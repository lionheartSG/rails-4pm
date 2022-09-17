import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="counter"
export default class extends Controller {
  static targets = ["value"]

  connect() {
  }

  increment(){
    let counter = this.valueTarget.innerText
    if (counter == 3) {
      this.valueTarget.innerText = 3
    } else {
      counter++
      this.valueTarget.innerText= counter
    }
  }

  decrement(){
    let counter = this.valueTarget.innerText
    if (counter == 0) {
      this.valueTarget.innerText = 0
    } else {
      counter--
      this.valueTarget.innerText= counter
    }
  }
}
