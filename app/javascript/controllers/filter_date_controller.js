import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter-date"
export default class extends Controller {
  static targets = ["to", "from"]

  connect() {
  }

  applyFilter (event) {
    event.preventDefault()
    let urlContent = window.location.search
    const timeParamsRegex = /&from=\d+&to=\d+/
    let timeParams = `&from=${this.fromTarget.value}&to=${this.toTarget.value}`
    if (timeParamsRegex.test(urlContent)) {
      let replaced = urlContent.replace(timeParamsRegex, timeParams)
      window.location.href = replaced
    } else {
    window.location.href = urlContent + timeParams
    }

    // Here I want to retain the previous entry value and assign it to the default value of input value
    // would also like to keep filter option display open, may need to do in other controller.
    const fixedFrom = this.fromTarget.value
    const fixedTo = this.toTarget.value
    console.log(fixedFrom)
    console.log(fixedTo)
  }

}
