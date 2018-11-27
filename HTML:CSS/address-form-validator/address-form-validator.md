### Introduction

![Shipping Address Form](https://s3.amazonaws.com/horizon-production/images/shipping-address-form.png)

In this challenge, you will practice your Object-oriented JavaScript skills by validating form
fields as the user interacts with the form.

### Getting Started

```no-highlight
$ et get address-form-validator
$ cd address-form-validator
$ open index.html
```

### Instructions

Write **Object-oriented JavaScript** to make sure all the fields in the Shipping
Address form are filled out when the user clicks the **Submit** button.

Let the user know that a particular form field is required by manipulating the
`document`, or DOM.

### Tips

##### Retrieving Values from Form Inputs

You can use the `document.getElementById()` method to retrieve individual
elements in the DOM. Using this, plus the `.value` attribute, will retrieve the
data within a particular form field.

```no-highlight
<!-- html -->
<label for="last-name">Last Name:</label>
<input type="text" id="last-name" name="lastName" />

// javascript
let lastName = document.getElementById('last-name').value
```

Another way to traverse the DOM is via the `name` attributes.

```no-highlight
<!-- html -->
<form id="shipping-address-form" name="shippingAddressForm" action="#" method="post">
  <label for="first-name">First Name:</label>
  <input type="text" id="first-name" name="firstName" />
</form>

// javascript
let addressForm = document.shippingAddressForm
let firstName = addressForm.firstName.value
```

Try these different approaches out in the JavaScript console in your browser.

##### Add an Event Listener to the Form Submit Event

When a user clicks the **Submit** button, we need to prevent the form from
submitting and check that the user has filled out the form completely. We can
do this with the `.addEventListener` method.

```no-highlight
let addressForm = document.shippingAddressForm
addressForm.addEventListener('submit', (event) => {
  event.preventDefault()
  // check if form is valid, here
})
```

##### Notifying the User

There are a number of ways to do this. Here are a few ideas.

* Create an unordered list, listing the fields the user has left empty, and insert it into the document.
* Add elements to the page, notifying the user which fields are missing. A pre-styled class exists if you wish to take this route. `<div class="error">your error message, here.</div>`
* Add a red border around the field that was left empty.
