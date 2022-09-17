import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="totalcredits"
export default class extends Controller {
  static targets = ["total"]
  connect() {
    console.log("hello from total")
  }

  update( {detail: {content}}) {
    this.totalTarget.innerText = content
  }
}
