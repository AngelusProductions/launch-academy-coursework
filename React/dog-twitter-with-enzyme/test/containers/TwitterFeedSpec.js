import TwitterFeed from '../../src/containers/TwitterFeed';
import Tweet from '../../src/components/Tweet';

describe('TwitterFeed', () => {
  let wrapper;
  let data = [{
    id: 1,
    text: "This doesn't look like Kansas",
    user: {
       name: 'Toto',
       profile_image_url: 'http://images2.fanpop.com/image/quiz/400000/400752_1271413686448_431_300.jpg'
    }
  }]

  beforeEach(() => {
    wrapper = mount(
      <TwitterFeed
        data={data}
      />
    )
  });


  it('should return true', () => {
    expect(true).toEqual(true);
  });

  it('should set selectedTweetId to null at start', () => {
    expect(wrapper.state()).toEqual({selectedTweetId: null});
  });

  it('should render a Tweet component', () => {
    expect(wrapper.find(Tweet)).toBePresent();
  });

  fit('should pass different props down if selectedTweetId is different', () => {
    // wrapper.setState({selectedTweetId: 3});
    expect( wrapper.find(Tweet).prop("className", '' ));
  });

})
