We have learned that automated tests provide us with the confidence we need that programs work the way we expect them to, and that programs will continue to work while we actively make changes. An added benefit to practicing Test Driven Development (TDD) is that it guides our implementation and results in better code quality.

We have also learned how to write tests for our back-end, and how to write tests for our front-end ReactJS components. But, what do we do when our components require interaction with backend API's? Fear not, we can test them with the help of a special JavaScript library called `fetch-mock`.

### Learning Goals

* Justify the need to mock fetch invocations as a separation of back-end and front-end concerns
* Integrate the `fetch-mock` library to test ReactJS components that require server side data
* Incorporate the `done` and `setTimeout` functions to handle asynchronous actions in JavaScript tests

### Getting Started

```no-highlight
$ et get faking-fetch-with-fetch-mock
$ cd faking-fetch-with-fetch-mock
$ yarn install
$ yarn run start

# in a separate terminal, from the same directory:
$ bundle
$ ruby server.rb

# in a separate terminal, from the same directory:
$ yarn run test
```

### Good Tests Are Isolated

A good test suite will run reliably and independently of external systems. For example, let's consider an application that communicated with the GitHub API to consume various users' profile information. We may run our test suite dozens of times a day, and if we had a series of tests for this functionality, we would be accessing their systems hundreds of times per day unnecessarily. Not only will that annoy them as the API provider, but it will also significantly degrade the performance of our test suite. With every HTTP request, we have to connect to their servers and wait to receive a response costing us valuable time. Also, if the API goes down or if they terminate our access, our test suite will fail, reducing the confidence we have in our tests.

Likewise, when we're testing our front-end ReactJS applications, we should consider the API that supports it to be an external system. In this project's specific case, the Sinatra app powered by our `server.rb` file acts as our API provider. When we consider our back-end in such a way, it is desirable to isolate the concern of our ReactJS logic so that it will not create unintended side effects on our backend data. We also will want to test what happens when we encounter error conditions and unsuccessful requests, as they are difficult to replicate with an actual, external system.

So, we often need to test code the relies on external systems, but we don't want to rely on them for our tests to run. So, what are we supposed to do as Test Driven Developers?

### Fake It Until You Make It

Unless they're Jackie Chan, most actors in show business work with stunt doubles that are made to look similar in appearance to the actual actors themselves. They do the hard work of jumping off of buildings and running through iconic slow-motion explosion scenes, so as not to put the famous actors in harm's way. Like these Hollywood heroes, we can use **test doubles** in our code that will act as our fetch requests. They will be similar in appearance and functionality to our actual backend, but they will not require an HTTP request/response cycle. Another benefit of using a test double is so that we can directly control the outcome of the response. This means we can specify the HTTP status code and response body.

Let's see what this looks like with an example from the supplied application. Our sample application, Winter Todo List, is a very simple task manager application. When the `WinterTodoList` container mounts, we issue a `fetch` request to the Sinatra server in order to retrieve the list of todos. We can also add todos by filling in the form and submitting a new task. In this article, we will walk through the tests that exercise this functionality. Take a moment to both play with the application and study the code involved.

1. Run the server with `yarn run start` and play with the application. Be sure to attempt to create a todo without a title, and see what happens.
2. Observe what the backend is doing by reading the code in `server.rb`
3. Read through the `src` directory and ensure you follow what's happening with the ReactJS code
4. Take a look at the `test/winterTodoListSpec.js` file

### Faking Our First Fetch Invocation

[fetch-mock][fetch-mock] is a node library that we can use to create our test doubles. For our purposes, it is important to use v5 as v6 has some new functionality around using `async` and `await` keywords.

You can install it with `yarn add --dev fetch-mock@5`. We've done this already for you in the codebase provided.

Recall that we can run the test suite from the root by running `yarn run test`. All tests should pass. Let's take a look at the first few tests in `winterTodoListSpec.js`

```javascript
beforeEach(() => {
  tasks = [
    {id: 1, title: 'Check the weather'}
  ]
  fetchMock.get('/api/v1/tasks', {
    status: 200,
    body: tasks
  });
  wrapper = mount(
    <WinterTodoList />
  )
})

afterEach(fetchMock.restore)

describe('listing', () => {
  it('renders an h2', () => {
    expect(wrapper.find('h2')).toBePresent()
    expect(wrapper.find('h2').text()).toEqual('Winter Todo List')
  })

  it('renders a list item for each item returned from the api call', (done) => {
    setTimeout(() => {
      expect(wrapper.find('li').length).toEqual(tasks.length)
      expect(wrapper.find('li').text()).toEqual(tasks[0].title)
      done()
    }, 0)
  })
})
```

The first test should look familiar based on what we've learned about Enzyme. We're mounting the component, and asserting that certain content, in this case an `h2` tag, is displayed. Let's study the `beforeEach` for a moment, though.

```javascript
tasks = [
    {id: 1, title: 'Check the weather'}
  ]
  fetchMock.get('/api/v1/tasks', {
    status: 200,
    body: tasks
  });
```

By using `fetch-mock`, in this way, we're inserting our test double to act as a fetch call when the component attempts to perform a `GET` request to `/api/v1/tasks`. When we make this type of call, we're instructing the double to "stand in" for actual fetch calls. We give the double instructions that, for the purposes of our tests, we want the call to result in an HTTP status code of `200`. We also provide a list of tasks for it to use in the response body.

Now let's study the test that actually asserts the component does something meaningful with the data.

```javascript
it('renders a list item for each item returned from the api call', (done) => {
  setTimeout(() => {
    expect(wrapper.find('li').length).toEqual(tasks.length)
    expect(wrapper.find('li').text()).toEqual(tasks[0].title)
    done()
  }, 0)
})
```

Recall that JavaScript is an evented programming language, meaning that when events trigger, the code doesn't *block* or wait for the event to complete. So, our tests must account for this behavior. When we make asynchronous calls like `fetch`, we have to tell our tests to wait for a response, even when we're using a test double. Thankfully, our test framework, Jasmine, accounts for this. By using a combination of the `done` argument and a `setTimeout` invocation, we can handle for asynchronous behavior.

We use the `done()` function to instruct the test to wait for all asynchronous activity to finish. Note that this `done` function is passed as the second argument to our `it` invocation. It's our way of telling the test suite, that once these events actually run, we are done exercising the implementation.

Comment out the `done()` and run the test suite. You should receive an error like:

```no-highlight
1) renders a list item for each item returned from the api call
     Winter Todo Listing listing
     Error: Timeout - Async callback was not invoked within timeout specified by jasmine.DEFAULT_TIMEOUT_INTERVAL.
```

When the `done` argument is supplied in the `it` invocation, the code will fail unless it encounters a `done()`.

We often use this in combination with a `setTimeout` to signal that we expect there to be an asynchronous task to run before we can assert its effects on the component. `setTimeout` is a function [provided by JavaScript][setTimeout-docs] that will delay execution of the code provided in the first argument. The 2nd argument specifies how long, in milliseconds, it should wait. Because our `fetch-mock` test double should respond very quickly, we don't have to wait very long, so we can specify `0` as the second argument.

It's also important that after the test runs, we clean up after ourselves, and to carry on our stunt double metaphor, remove the test double from the set of the movie. This will be invoked after every `it` in this test file.

```javascript
afterEach(fetchMock.restore)
```

This will basically clear out our instructions and put the star of the show, `fetch`, back on the silver screen.

So, putting it all together:

1. The `fetchMock` invocation cues the test double with the HTTP status code and data
2. We use a combination of the `done` argument and setTimeout in the test to handle asynchronous behavior
3. We assert that the component does something meaningful with the response the test double supplied
4. We ask `fetchMock` to exit stage left, so that we can get on with the rest of our testing.

### A Small Note About Configuring Fetch in Your Test Suite

Recall that when we run our tests, we're running them in a node environment, and we're using a tool called **PhantomJS** to emulate the behavior of a web browser. There's one catch: node doesn't globally support `fetch` like modern web browsers do. So we have to do a little configuration with our test suite. This has been done for you in the codebase provided.

First, we have to install and configure `isomorphic-fetch`, a library that adds `fetch` as a global.

On the command line, install `isomorphic-fetch`:

```no-highlight
yarn add isomorphic-fetch --dev
```

Then in your `test/testHelper.js`, file, we'll want to assign `fetch` as a global:

```javascript
import { mount } from 'enzyme';
import jasmineEnzyme from 'jasmine-enzyme';
import React from 'react';
import fetch from 'isomorphic-fetch'

Object.assign(global, {
  mount,
  jasmineEnzyme,
  React,
  fetch
});
```

### Faking Successful POST Requests

Ok, so we made progress with our first test double - we emulated a GET request and wrote tests against that. Now, how do we test the form submission? Like we did with our GET request, we can use `fetch-mock` to simulate a `POST` request when we attempt to create a new todo.

```javascript
it('successfully adds to the list when a valid task is supplied', (done) => {
  fetchMock.post('/api/v1/tasks', {
    status: 201,
    body: {id: 4124, title: 'Scream'}
  });
  setTimeout(() => {
    let listItemCount = wrapper.find('li').length
    wrapper.find('.submit-button').simulate('submit')
    setTimeout(() => {
      expect(wrapper.find('li').length).toEqual(listItemCount + 1)
      done()
    })
  }, 0)
})
```

Here, we instruct the test double to respond with a `201` status code when the test tries to perform a POSTing `fetch` to `/api/v1/tasks`. A `201` is HTTP's way of expressing that something was created on the server, so it's an appropriate response to receive from the back-end when we're successful in creating a todo. So, when the `onSubmit` event handler runs in our container, the test double in place to emulate a successful response from the back-end. We set an expectation that the list size increases, indicating that the task we added has been added to the list.

Notice, in this case, we have two nested `setTimeout` invocations. That's because we have to wait for the initial list to load from the `componentDidMount`, and then we have to wait for the `onSubmit` event to execute. Generally, whenever your code has to wait for an event to execute, you will have to make use of the `setTimeout` function in your tests.

### Faking Unsuccessful POST Requests

A good test suite will go beyond exercising the "happy path", or when everything goes right. The pattern we've established above also allows us to test error conditions. For example, if we do not complete the form and we attempt to send the API bad data, we can emulate the HTTP status code of `422`, which means *Unprocessable Entity*, a code we often use to indicate that the supplied data doesn't meet our standards for good data. It's basically the API's way of saying you didn't supply the proper information with your request.

So, when we do not specify a title for the todo, the server should respond with a 422, and display an error message.

```javascript
it('shows an error message when a 422 status is received', (done) => {
  fetchMock.post('/api/v1/tasks', {
    status: 422,
    body: { errors: ["Title can't be blank"] }
  });
  wrapper.find('.submit-button').simulate('submit')
  setTimeout(() => {
    expect(wrapper.find('ul.errors')).toBePresent()
    expect(wrapper.find('ul.errors li').text()).toEqual("Title can't be blank")
    done()
  }, 0)
})
```

In this example, first note that we didn't have to nest `setTimeout` calls. That's because we don't need to wait for the data to be loaded onto the page to exercise the form's error conditions. The state of the todo list does not have an impact on this functionality.

Once the `fetchMock` test double is in place, we can use enzyme to assert that the user is presented with an appropriate error message.

### Why This Matters

Tests keep us honest. They're our defense against ourselves, in that they ensure the code is doing what we expect, and that we don't break things as the application evolves. Web applications get interesting when they work with external systems, but those integrations can make our code more difficult to test. With test double patterns like the one established above, we can get around this complexity.

[fetch-mock]: http://www.wheresrhys.co.uk/fetch-mock/v5/
[setTimeout-docs]: https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope/setTimeout
