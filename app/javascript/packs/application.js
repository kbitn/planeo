import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { disableCheckBox } from '../plugins/votingcheckbox';
import { initMapbox } from '../plugins/init_mapbox';
import { initMapboxNoSearch } from '../plugins/init_mapbox_nosearch';
import { mapboxAddressValue } from '../plugins/mapbox_address_value';
import { selectDates } from '../plugins/selecting_dates';
import { setUserPreview } from '../plugins/user_uploader';
import { setGroupPreview } from '../plugins/group_uploader';
import { setEventPreview } from '../plugins/event_uploader';

const signUpPage = document.getElementById("registrations/new")
const newGroupPage = document.getElementById("groups/new")
const newEventPage = document.getElementById("events/create")
const showEventPage = document.getElementById("events/show")
const editEventPage = document.getElementById("events/edit")
const editUserPage = document.getElementById("users/edit")

if (newEventPage) {
  initMapbox();
  mapboxAddressValue();
  selectDates();
  setEventPreview();
}

if (editEventPage) {
  initMapbox();
  mapboxAddressValue();
  setEventPreview();
  selectDates();
}

if (showEventPage) {
  initMapboxNoSearch();
}

if (signUpPage || editUserPage) {
  setUserPreview();
}

if (newGroupPage) {
  setGroupPreview();
}



