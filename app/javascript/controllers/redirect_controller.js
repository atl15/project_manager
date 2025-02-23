import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="redirect"
export default class extends Controller {
  static values = {
    url: String
  }

  perform() {
    window.location = this.urlValue
  }
}
