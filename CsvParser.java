import java.util.Arrays;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class CsvParser {

    public static void main(String[] args) {

        String coursesFile = "courses.csv";
        String prerequisitesFile = "prerequisites.csv";
        BufferedReader br = null;
        BufferedReader sp = null;
        String line = "";
        String kite = "";
        String cvsSplitBy = ",";

        try {

            br = new BufferedReader(new FileReader(coursesFile));
            sp = new BufferedReader(new FileReader(prerequisitesFile));
            String[] course= new String[0];
            String[] prerequisites= new String[0];

            while ( (line = br.readLine()) != null ) {

                // use comma as separator
                course = line.split(cvsSplitBy);

            }
            while ((kite = sp.readLine()) != null ) {

                // use comma as separator
                prerequisites = kite.split(cvsSplitBy);

            }
           


        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            System.out.println(Arrays.deepToString(course));
            System.out.println(Arrays.deepToString(course));
        }
    }

}