import "bootstrap";

import { sweetalertDeleteWarning, getLinkId } from '../plugins/init_sweetalert';

sweetalertDeleteWarning('.delete_button', {
  title: "Delete this job",
  text: "Are you sure?",
  icon: "error",
  buttons: [true, "Delete"]
}, (value) => {
  if (value) {
    var deleted_job = getLinkId();
    const link = document.getElementById(deleted_job);
    link.click();
  }
});
