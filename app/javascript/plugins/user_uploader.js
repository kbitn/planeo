const readURL = (input, placeholder) => {
  if (input.files && input.files[0]) {
    const reader = new FileReader();

    reader.onload = function(e) {
       placeholder.setAttribute("style", `background-image: url(${e.target.result}); width: 120px; height: 120px; border: none;`);
       placeholder.innerText = "";
    }

    reader.readAsDataURL(input.files[0]);
  }
}

const setUserPreview = () => {
  const userPhoto = document.querySelector("#user_photo");
  const placeholder = document.querySelector(".file .optional")

  userPhoto.addEventListener("change", (event) => {
    readURL(userPhoto, placeholder);
  });
}

export { setUserPreview };
