class Address {
  constuctor () {
    this.firstName = null;
    this.lastName = null;
    this.address = null;
    this.city = null;
    this.state = null;
    this.zipCode = null;
    this.phoneNumber = null;
    this.email = null;
  }
}

let address = new Address ();

function submit (address) {

  address.firstName = document.getElementById('first-name').value;
  address.lastName = document.getElementById('last-name').value;
  address.address = document.getElementById('address').value;
  address.city = document.getElementById('city').value;
  address.state = document.getElementById('state').value;
  address.zipCode = document.getElementById('zip-code').value;
  address.phoneNumber = document.getElementById('phone-number').value;
  address.email = document.getElementById('email').value;

  if (address.firstName == "") {
    document.getElementById('first-name').style.border = '1px solid red';
  }
  if (address.lastName == "") {
    document.getElementById('last-name').style.border = '1px solid red';
  }
  if (address.address == "") {
    document.getElementById('address').style.border = '1px solid red';
  }
  if (address.city == "") {
    document.getElementById('city').style.border = '1px solid red';
  }
  if (address.state == "") {
    document.getElementById('state').style.border = '1px solid red';
  }
  if (address.zipCode == "") {
    document.getElementById('zip-code').style.border = '1px solid red';
  }
  if (address.phoneNumber == "") {
    document.getElementById('phone-number').style.border = '1px solid red';
  }
  if (address.email == "") {
    document.getElementById('email').style.border = '1px solid red';
  }

}

document.shippingAddressForm.addEventListener('submit', () => {
  submit(address);
});
