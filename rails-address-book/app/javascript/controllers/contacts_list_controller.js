import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="contacts-list"
export default class extends Controller {
  static targets = [ "contact" ]
  static classes = [ "highlighted" ]

  selectContact(event) {
    this.contactTargets.forEach((contact) => {
      contact.classList.remove(this.highlightedClass)
    })
    event.currentTarget.classList.add(this.highlightedClass)

  }
}
