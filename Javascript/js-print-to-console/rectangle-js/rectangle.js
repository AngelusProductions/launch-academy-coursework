class Rectangle {
  constructor (height, width = height) {
  this.height = height;
  this.width = width;
  }
  area () {
    return this.height * this.width;
  }
}
