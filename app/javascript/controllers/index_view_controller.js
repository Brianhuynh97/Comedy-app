// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   static targets = ["mapbutton", "gridbutton", "mapview", "gridview"]
//   connect() {
//     console.log("Hello from our first Stimulus controller")
//   }

//   map() {
//     console.log("You clicked the map")
//     // let map = document.querySelector(".mapactive");
//     // let grid = document.querySelector(".gridactive");
//     // let mapButton = document.querySelector("#mapicon");
//     this.gridviewTarget.classList.add('d-none');
//     this.mapviewTarget.classList.remove('d-none');
//     this.mapbuttonTarget.classList.toggle('d-none');

//     // if (map.style.display === "none") {
//     //   map.style.display = "";
//     // } else {
//     //   map.style.display = "none";
//     // }
//   }

//   grid() {
//     console.log("You clicked the grid")
//     // let grid = document.querySelector(".gridactive");
//     // let map = document.querySelector(".mapactive");
//     // let gridButton = document.querySelector("#gridicon");


//     this.mapviewTarget.classList.add('d-none');
//     this.gridviewTarget.classList.remove('d-none');
//     this.gridbuttonTarget.classList.toggle('d-none');
//   }
// }

let map = document.getElementById("mapactive");
let grid = document.getElementById("gridactive");
let mapButton = document.getElementById("mapicon");
let gridButton = document.getElementById("gridicon");

// mapButton.addEventListener('click', () => {
//   grid.classList.add('d-none');
//   gridButton.classList.remove('d-none');

//   map.classList.remove('d-none');
//   mapButton.classList.add('d-none');
// });

// gridButton.addEventListener('click', () => {
//   map.classList.add('d-none');
//   mapButton.classList.remove('d-none');

//   grid.classList.remove('d-none');
//   gridButton.classList.add('d-none');
// });

if (mapButton) {
  mapButton.addEventListener('click', () => {
    grid.classList.add('d-none');
    gridButton.classList.remove('d-none');
    map.classList.remove('d-none');
    mapButton.classList.add('d-none');
  });
}
if (gridButton) {
  gridButton.addEventListener('click', () => {
    map.classList.add('d-none');
    mapButton.classList.remove('d-none');
    grid.classList.remove('d-none');
    gridButton.classList.add('d-none');
  });
}
