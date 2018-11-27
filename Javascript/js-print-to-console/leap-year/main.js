class Year {
  constructor(year) {
    this.year = year;
  }
  isLeapYear() {
    if (this.year % 4 != 0) {
      return false;
    } else if (this.year % 100 != 0) {
      return true;
    } else if (this.year % 400 != 0) {
      return false;
    } else {
      return true;
    }
  }
}

for ( i=2000; i<2019; i++ ) {
  if ( new Year(i).isLeapYear() ) {
    console.log(i);
  }
}
