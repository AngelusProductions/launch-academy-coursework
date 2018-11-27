import Tweet from '../../src/components/Tweet';

describe('Tweet', () => {
  let wrapper;
  let data = {
    key: 5,
    id: 5,
    text: "Ruh-roh!",
    name: "Scooby",
    userPhoto:"https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Scooby-Doo.png/150px-Scooby-Doo.png",
    handleClick: null,
    className:"selected"
  }

  beforeEach(() => {
    wrapper = mount(
      <Tweet
        data={data}
      />
    )
  });

    it('should return true', () => {
      expect(true).toEqual(true);
    })

    xit('should return the right HTML', () => {
      // expect(wrapper.find('span').text()).toBe("Scooby");
      expect(wrapper.find('p').text()).toBe("Ruh-roh!");
    });

    xit('should have proper props for corresponding HTML tags', () => {
      // expect(wrapper.find('div').props()).toHaveProp({className: ''});
      expect(wrapper.find('img').props()).toEqual({ src: 'https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Scooby-Doo.png/150px-Scooby-Doo.png'});
    });
})
