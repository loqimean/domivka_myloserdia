import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect(e) {
    this.element.dataset.action = "animationend->flash#animated"

    setTimeout(() => {
      this.element.classList.remove('!right-1', 'flash-show');
      this.element.classList.add('flash-hide');
    }, 5000);
  }

  animated(e) {
    if (e.animationName === 'move-to-right') {
      this.element.remove();
    } else if (e.animationName === 'move-from-right') {
      this.element.classList.add('!right-1');
    }
  }
}
