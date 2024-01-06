
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

class City {
    String name;
    List<Road> roads;

    public City(String name) {
        this.name = name;
        this.roads = new ArrayList<>();
    }
}

class Road {
    City destination;
    int distance;

    public Road(City destination, int distance) {
        this.destination = destination;
        this.distance = distance;
    }
}

public class CityPaths {
    private Map<String, City> cities;

    public CityPaths() {
        this.cities = new HashMap<>();
    }

    public void addCity(String name) {
        cities.put(name, new City(name));
    }

    public void addRoad(String source, String destination, int distance) {
        City srcCity = cities.get(source);
        City destCity = cities.get(destination);
        srcCity.roads.add(new Road(destCity, distance));
    }

    public List<String> findAllPaths(String source, String destination) {
        List<String> paths = new ArrayList<>();
        City srcCity = cities.get(source);
        City destCity = cities.get(destination);
        if (srcCity != null && destCity != null) {
            findPaths(srcCity, destCity, "", 0, paths);
        }
        return paths;
    }

    private void findPaths(City currentCity, City destCity, String path, int distance, List<String> paths) {
        if (currentCity == destCity) {
            paths.add(path + currentCity.name + " " + distance);
            return;
        }

        for (Road road : currentCity.roads) {
            findPaths(road.destination, destCity, path + currentCity.name + " ", distance + road.distance, paths);
        }
    }

    public static void main(String[] args) {
        // Sample Input
        int numCities = 5;
        String[] cityNames = {"DELHI", "MUMBAI", "CHENNAI", "PUNE", "KOLKATA"};
        int numRoads = 5;
        String[] roadInputs = {
                "DELHI MUMBAI 10",
                "MUMBAI CHENNAI 12",
                "CHENNAI PUNE 11",
                "KOLKATA CHENNAI 13",
                "DELHI PUNE 14",
        };
        String sourceCity = "PUNE";
        String destinationCity = "DELHI";
        CityPaths cityPaths = new CityPaths();


        for (String cityName : cityNames) {
            cityPaths.addCity(cityName);
        }


        for (String roadInput : roadInputs) {
            String[] parts = roadInput.split(" ");
            String source = parts[0];
            String destination = parts[1];
            int distance = Integer.parseInt(parts[2]);
            cityPaths.addRoad(source, destination, distance);
        }

        // find paths
        List<String> paths = cityPaths.findAllPaths(sourceCity, destinationCity);

        // Op paths
        for (String path : paths) {
            System.out.println(path);
        }
    }
}