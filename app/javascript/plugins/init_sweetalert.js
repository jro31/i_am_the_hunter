import swal from 'sweetalert';

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

export { sweetalertDeleteWarning, getLinkId };
