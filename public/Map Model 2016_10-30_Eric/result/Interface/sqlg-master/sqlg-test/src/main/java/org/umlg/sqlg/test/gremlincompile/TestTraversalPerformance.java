package org.umlg.sqlg.test.gremlincompile;

import org.apache.commons.lang3.time.StopWatch;
import org.apache.tinkerpop.gremlin.process.traversal.Path;
import org.apache.tinkerpop.gremlin.process.traversal.dsl.graph.GraphTraversal;
import org.apache.tinkerpop.gremlin.structure.T;
import org.apache.tinkerpop.gremlin.structure.Vertex;
import org.junit.Test;
import org.umlg.sqlg.structure.SqlgVertex;
import org.umlg.sqlg.test.BaseTest;

import java.sql.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static org.junit.Assert.assertEquals;

/**
 * Date: 2015/02/01
 * Time: 11:48 AM
 */
public class TestTraversalPerformance extends BaseTest {

    @Test
    public void testSpeed() throws InterruptedException {
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        Map<String, Object> columns = new HashMap<>();
        for (int i = 0; i < 100; i++) {
            columns.put("property_" + i, "asdasd");
        }
        //Create a large schema, it slows the maps  down
//        this.sqlgGraph.tx().normalBatchModeOn();
        for (int i = 0; i < 1000; i++) {
            if (i % 100 == 0) {
                stopWatch.stop();
                System.out.println("got " + i + " time taken " + stopWatch.toString());
                stopWatch.reset();
                stopWatch.start();
            }
            Vertex person = this.sqlgGraph.addVertex("Person_" + i, columns);
            Vertex dog = this.sqlgGraph.addVertex("Dog_" + i, columns);
            ((SqlgVertex)person).addEdgeWithMap("pet_" + i, dog, columns);
            this.sqlgGraph.tx().commit();
        }
        this.sqlgGraph.tx().commit();
        stopWatch.stop();
        System.out.println("done time taken " + stopWatch.toString());
        stopWatch.reset();
        stopWatch.start();

        this.sqlgGraph.tx().normalBatchModeOn();
        for (int i = 1; i < 100_001; i++) {
            Vertex a = this.sqlgGraph.addVertex(T.label, "God", "name", "god" + i);
            for (int j = 0; j < 2; j++) {
                Vertex b = this.sqlgGraph.addVertex(T.label, "Hand", "name", "name_" + j);
                a.addEdge("hand", b);
                for (int k = 0; k < 5; k++) {
                    Vertex c = this.sqlgGraph.addVertex(T.label, "Finger", "name", "name_" + k);
                    b.addEdge("finger", c);
                }
            }
        }
        this.sqlgGraph.tx().commit();
        stopWatch.stop();
        System.out.println("Time for insert: " + stopWatch.toString());
        stopWatch.reset();
        stopWatch.start();
        for (int i = 0; i < 1; i++) {
            GraphTraversal<Vertex, Path> traversal = sqlgGraph.traversal().V().hasLabel("God").as("god").out("hand").as("hand").out("finger").as("finger").path();
            while (traversal.hasNext()) {
                Path path = traversal.next();
                List<Object> objects = path.objects();
                assertEquals(3, objects.size());
                List<Set<String>> labels = path.labels();
                assertEquals(3, labels.size());
            }
            stopWatch.stop();
            System.out.println("Time for gremlin: " + stopWatch.toString());
            stopWatch.reset();
            stopWatch.start();
        }
        stopWatch.stop();
        System.out.println("Time for gremlin: " + stopWatch.toString());
        stopWatch.reset();
        stopWatch.start();
        List<Map<String, Vertex>> traversalMap = sqlgGraph.traversal().V().hasLabel("God").as("god").out("hand").as("hand").out("finger").as("finger").<Vertex>select("god", "hand", "finger").toList();
        assertEquals(1_000_000, traversalMap.size());
        stopWatch.stop();
        System.out.println("Time for gremlin 2: " + stopWatch.toString());
        stopWatch.reset();
        stopWatch.start();

        for (int i = 0; i < 100; i++) {
            Connection connection = sqlgGraph.tx().getConnection();
            try (Statement statement = connection.createStatement()) {
                ResultSet resultSet = statement.executeQuery("SELECT\n" +
                        "\t\"public\".\"V_Finger\".\"ID\" AS \"alias1\",\n" +
                        "\t\"public\".\"V_Finger\".\"name\" AS \"alias2\",\n" +
                        "\t \"public\".\"V_God\".\"ID\" AS \"alias3\",\n" +
                        "\t \"public\".\"V_God\".\"name\" AS \"alias4\",\n" +
                        "\t \"public\".\"V_Hand\".\"ID\" AS \"alias5\",\n" +
                        "\t \"public\".\"V_Hand\".\"name\" AS \"alias6\",\n" +
                        "\t \"public\".\"V_Finger\".\"ID\" AS \"alias7\",\n" +
                        "\t \"public\".\"V_Finger\".\"name\" AS \"alias8\"\n" +
                        "FROM\n" +
                        "\t\"public\".\"V_God\" INNER JOIN\n" +
                        "\t\"public\".\"E_hand\" ON \"public\".\"V_God\".\"ID\" = \"public\".\"E_hand\".\"public.God__O\" INNER JOIN\n" +
                        "\t\"public\".\"V_Hand\" ON \"public\".\"E_hand\".\"public.Hand__I\" = \"public\".\"V_Hand\".\"ID\" INNER JOIN\n" +
                        "\t\"public\".\"E_finger\" ON \"public\".\"V_Hand\".\"ID\" = \"public\".\"E_finger\".\"public.Hand__O\" INNER JOIN\n" +
                        "\t\"public\".\"V_Finger\" ON \"public\".\"E_finger\".\"public.Finger__I\" = \"public\".\"V_Finger\".\"ID\"");
                while (resultSet.next()) {
                    String s1 = resultSet.getString("alias1");
                    String s2 = resultSet.getString("alias2");
                    String s3 = resultSet.getString("alias3");
                    String s4 = resultSet.getString("alias4");
                    String s5 = resultSet.getString("alias5");
                    String s6 = resultSet.getString("alias6");
                    String s7 = resultSet.getString("alias7");
                    String s8 = resultSet.getString("alias8");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            stopWatch.stop();
            System.out.println("Time for name sql: " + stopWatch.toString());
            stopWatch.reset();
            stopWatch.start();
        }
        stopWatch.stop();
        stopWatch.reset();
        for (int i = 0; i < 100; i++) {
            stopWatch.start();
            Connection connection = sqlgGraph.tx().getConnection();
            try (Statement statement = connection.createStatement()) {
                ResultSet resultSet = statement.executeQuery("SELECT\n" +
                        "\t\"public\".\"V_Finger\".\"ID\" AS \"alias1\",\n" +
                        "\t\"public\".\"V_Finger\".\"name\" AS \"alias2\",\n" +
                        "\t \"public\".\"V_God\".\"ID\" AS \"alias3\",\n" +
                        "\t \"public\".\"V_God\".\"name\" AS \"alias4\",\n" +
                        "\t \"public\".\"V_Hand\".\"ID\" AS \"alias5\",\n" +
                        "\t \"public\".\"V_Hand\".\"name\" AS \"alias6\",\n" +
                        "\t \"public\".\"V_Finger\".\"ID\" AS \"alias7\",\n" +
                        "\t \"public\".\"V_Finger\".\"name\" AS \"alias8\"\n" +
                        "FROM\n" +
                        "\t\"public\".\"V_God\" INNER JOIN\n" +
                        "\t\"public\".\"E_hand\" ON \"public\".\"V_God\".\"ID\" = \"public\".\"E_hand\".\"public.God__O\" INNER JOIN\n" +
                        "\t\"public\".\"V_Hand\" ON \"public\".\"E_hand\".\"public.Hand__I\" = \"public\".\"V_Hand\".\"ID\" INNER JOIN\n" +
                        "\t\"public\".\"E_finger\" ON \"public\".\"V_Hand\".\"ID\" = \"public\".\"E_finger\".\"public.Hand__O\" INNER JOIN\n" +
                        "\t\"public\".\"V_Finger\" ON \"public\".\"E_finger\".\"public.Finger__I\" = \"public\".\"V_Finger\".\"ID\"");
                ResultSetMetaData resultSetMetaData = resultSet.getMetaData();


                while (resultSet.next()) {
                    Long s1 = resultSet.getLong(1);
                    String s2 = resultSet.getString(2);
                    Long s3 = resultSet.getLong(3);
                    String s4 = resultSet.getString(4);
                    Long s5 = resultSet.getLong(5);
                    String s6 = resultSet.getString(6);
                    Long s7 = resultSet.getLong(7);
                    String s8 = resultSet.getString(8);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            stopWatch.stop();
            System.out.println("Time for index sql: " + stopWatch.toString());
            stopWatch.reset();
        }
//        Assert.assertEquals(100_000, vertexTraversal(a).out().out().count().next().intValue());
    }
}
