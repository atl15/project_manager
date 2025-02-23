import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form_submit"
export default class extends Controller {
  static targets = ["form"]

  submit(event) {
    event.preventDefault();

    let submitter = this.submitter
    this.form.appendChild(submitter)
    submitter.click()
    this.form.removeChild(submitter)
  }

  get submitter() {
    let submitter = document.createElement("input")

    submitter.type = "submit"
    submitter.value = true
    submitter.hidden = true

    return submitter
  }

  get form() {
    return this.element
  }
}
