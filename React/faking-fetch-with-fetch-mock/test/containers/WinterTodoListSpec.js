import WinterTodoList from '../../src/containers/WinterTodoList'
import fetchMock from 'fetch-mock'

describe('Winter Todo Listing', () => {
  let wrapper;
  let tasks;

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

  describe('adding a new todo', () => {
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
  })
})
