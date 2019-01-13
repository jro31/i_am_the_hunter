import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButtons = document.querySelectorAll(selector);
  if (swalButtons) {
    swalButtons.forEach(function(swalButton) {
      swalButton.addEventListener('click', () => {
        swal(options).then(callback); // <-- add the `.then(callback)`
      });
    });
  }
};

export { initSweetalert };
