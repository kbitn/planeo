const mapboxAddressValue = () => {
  const searchbar = document.querySelector('.mapboxgl-ctrl-geocoder--input')
  const addressmap = document.getElementById('event_address')

  searchbar.addEventListener("change", () => {
    addressmap.value = searchbar.value;
  })
}

export { mapboxAddressValue };
