import "bootstrap";

import { sweetalertNewJobConfirm, sweetalertDeleteWarning, getLinkId } from '../plugins/init_sweetalert';

sweetalertNewJobConfirm('.create_job_button', {
  title: "Job added",
  icon: "success",
}, (value) => {
  if (value) {
    const link = document.querySelector('.submit_link');
    link.click();
  }
});

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
