import ArticleShow from '../../src/components/ArticleShow';

describe('ArticleShow', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
      <ArticleShow
        title="How to Build a Spaceship"
        body="Go to NASA maybe"
      />
    )
  });

  it('renders', () => {
    expect(true).toEqual(true)
  })

  it('has an <h2> tag that renders correct text', () => {
    expect(wrapper.find('h2').text()).toBe("How to Build a Spaceship")
  })

  it('has a <p> tag that renders correct text', () => {
    expect(wrapper.find('p').text()).toBe("Go to NASA maybe")
  })

  it('has a <div> tag that renders correct text', () => {
    expect(wrapper.find('.button').text()).toBe("Back")
  })

  it('has a title prop', () => {
    expect(wrapper.props().title).toEqual("How to Build a Spaceship")
  })

  it('has a body prop', () => {
    expect(wrapper.props().body).toEqual("Go to NASA maybe")
  })

  it('has a button with an onClick property', () => {
    expect(wrapper.find('.button')).toHaveProp("onClick")
  })
})
