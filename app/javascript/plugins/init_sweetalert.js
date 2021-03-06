import swal from 'sweetalert';

const sweetalertNewJobConfirm = (selector, options = {}, callback = () => {}) => {
  const swalButtons = document.querySelectorAll(selector);
  console.log(swalButtons);
  if (swalButtons) {
    swalButtons.forEach(function(swalButton) {
      swalButton.addEventListener('click', () => {
        swal(options).then(callback);
      });
    })
  }
};

const sweetalertUpdateJobConfirm = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelector(selector);
  console.log(swalButton);
  if (swalButton) {
    swalButton.addEventListener('click', () => {
      swal(options).then(callback);
    })
  }
};

let link_id = null;
const sweetalertDeleteWarning = (selector, options = {}, callback = () => {}) => {
  const swalButtons = document.querySelectorAll(selector);
  if (swalButtons) {
    swalButtons.forEach(function(swalButton) {
      swalButton.addEventListener('click', () => {
        link_id = swalButton.id + "_delete";
        swal(options).then(callback);
      });
    });
  }
};

function getLinkId() {
  return link_id;
};

export { sweetalertNewJobConfirm, sweetalertUpdateJobConfirm, sweetalertDeleteWarning, getLinkId };
