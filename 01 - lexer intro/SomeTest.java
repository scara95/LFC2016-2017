/**
See the compiler error, which help users in correcting the program structure
**/
class SomeTest{
    public static void main(String[] args) {
        int level = 0;
        System.out.println("init level = " + level );
        level = randomStuff(level );
        System.out.println("randomStuff = " + level );
    }

    int randomStuff (int y) {
        y = 5;
        return y;
    }
}
