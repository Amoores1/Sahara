import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["bookstore"]
  connect() {
    // this.element.textContent = "Hello Bookstore!"
    // console.log("Hello there")
    // let testing = document.querySelector(".mapboxgl-marker")
    // console.log(testing)
  }

    select() {

    let markers = document.querySelectorAll("mapboxgl-marker-anchor-center")
    console.log(markers)



    // let popups = document.querySelectorAll("mapboxgl-popup")
    // console.log(popups)

    // popups.forEach(popup=> {
    //   // console.log(popup)
    // })

    // const popup = new mapboxgl.Popup().setHTML(marker.info_window_map)
  }
}
