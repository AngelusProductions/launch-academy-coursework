import ArticleTile from '../../src/components/ArticleTile';

describe('ArticleTile', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
      <ArticleTile
        title="How to Build a Spaceship"
        body="Go to NASA maybe"
      />
    )
  });

  it('renders', () => {
    expect(true).toEqual(true)
  })

  it('has a <p> tag that renders correct text', () => {
    expect(wrapper.find('p').text()).toBe("How to Build a Spaceship")
  })

  it('has a <p> tag that renders correct text', () => {
    expect(wrapper.find('p').text()).toBe("How to Build a Spaceship")
  })

  it('has a <div> tag that renders correct text', () => {
    expect(wrapper.find('.article-tile').text()).toBe("How to Build a Spaceship")
  })

  it('has a link tag', () => {
    expect(wrapper.find('Link')).toBePresent()
  })

  it('has a title prop', () => {
    expect(wrapper.props().title).toEqual("How to Build a Spaceship")
  })

  it('has a body prop', () => {
    expect(wrapper.props().body).toEqual("Go to NASA maybe")
  })

  it('has a link tag with a "to" property', () => {
    expect(wrapper.find('Link')).toHaveProp('to')
  })

})
