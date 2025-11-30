void setup() {
  size(400, 400);  // 画布大小
}

void draw() {
  background(255);  // 白色背景
  fill(255, 0, 0);  // 红色
  ellipse(mouseX, mouseY, 50, 50); // 跟随鼠标的圆
}
