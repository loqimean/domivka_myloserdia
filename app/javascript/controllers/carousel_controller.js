import { Controller } from "@hotwired/stimulus";
import { Swiper, FreeMode, Pagination, Navigation, Grid, Autoplay } from 'swiper';

// Connect Swiper modules
Swiper.use([FreeMode, Pagination, Navigation, Grid, Autoplay])

export default class extends Controller {
  static values = {
    options: Object
  }

  connect(e) {
    this.swiper = new Swiper(this.element, {
      ...this.defaultOptions,
      ...this.optionsValue
    });
  }

  disconnect() {
    this.swiper.destroy()
    this.swiper = undefined
  }

  get defaultOptions() {
    return {}
  }
}
