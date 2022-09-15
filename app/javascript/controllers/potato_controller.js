import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["genres", "genrecaret", "year", "yearcaret", "condition", "conditioncaret"]

  connect() {
  }
  revealGenres() {
    this.genresTarget.classList.toggle("d-none")
    this.genrecaretTarget.classList.toggle("fa-caret-down")
  }
  revealYear() {
    this.yearTarget.classList.toggle("d-none")
    this.yearcaretTarget.classList.toggle("fa-caret-down")
  }
  revealCondition() {
    this.conditionTarget.classList.toggle("d-none")
    this.conditioncaretTarget.classList.toggle("fa-caret-down")
  }
}
