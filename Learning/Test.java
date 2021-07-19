public class Test {
    public static void main(String[] args) {

    }

    public static String convert2(int digit) {
        if (digit >= 10 && digit < 100) {
            int t = digit / 10;
            int u = digit % 10;

            if (t == 0)
                return units[u];
            else if (t == 1)
                return teens[u];
            else if (u == 0)
                return tens[t - 2];
            else
                return tens[t - 2] + "-" + units[u];
        }
        return "";
    }
}