// function typeEffect(element, speed) {
//   let text = element.innerHTML;
//   element.innerHTML = "";
//   let i = 0;
//   let timer = setInterval(function () {
//     if (i < text.length) {
//       element.append(text.charAt(i));
//       i++;
//     } else {
//       clearInterval(timer);
//     }
//   }, speed);
// }

// let speed = 200;
// let h1 = document.querySelector("h1");
// let delay = h1.innerHTML.length * speed + speed;
// typeEffect(h1, speed);

let textType = document.querySelector('.typeing')
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
