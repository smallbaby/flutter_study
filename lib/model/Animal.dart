class Animal  {
  void eat() {
    print("eat...");
  }
  void run() {
    print("run...");
  }
}

class Human extends Animal {
  void think() {
    print("think");
  }
  main() {
    Human human = new Human();
    human.run();
    List<Color> colors = Color.values;
  }
}
enum Color {
  red, green
}

