length = prompt("How long is your driveway?");
width = prompt("How wide is your driveway?");
height = 10;
volume = Math.round(length * width * height);

if (0 <= volume && volume <= 50) { price = 20; }
else if (50 < volume && volume <= 150) { price = 50; }
else if (150 < volume && volume < 300) { price = 100; }
else if (300 <= volume) { price = 150; }
