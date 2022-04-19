// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"

document.addEventListener('turbolinks:load', () => {
  let textType = document.querySelector('.typeing')
  if (textType) {
    let textArray = textType.dataset.typeingtext.split("")
    let typeCount = 0;

    let autoTypeText = () => {
      if (typeCount < textType.dataset.typeingtext.length) {
        textType.innerHTML += textType.dataset.typeingtext.charAt(typeCount)
        typeCount++
        textArray = textType.dataset.typeingtext.split("")
      } else {
        textArray.pop()
        textType.innerHTML = textArray.join("")
        if (textArray.length == 0) {
          typeCount = 0
        }
      }
    }
    setInterval(() => {
      autoTypeText()
    }, 250)
  }

})
