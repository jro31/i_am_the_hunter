import "bootstrap";

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('.delete_button', {
  title: "Delete this job",
  text: "Are you sure?",
  icon: "error",
  buttons: [true, "Delete"]
}, (value) => {
  if (value) {
    const link = document.querySelector('.delete_link');
    link.click();
  }
});
