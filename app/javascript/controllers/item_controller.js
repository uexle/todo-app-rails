import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "field" ]

  update(event) {
    const itemId = event.target.id;
    const field = document.getElementById(`item${itemId}`);
    if (field) {
      const newValue = event.target.textContent.trim();
      const oldValue = field.value.trim();
      if (newValue !== oldValue) {
        field.value = newValue;
        field.form.submit();
      }
    }
  }
}
