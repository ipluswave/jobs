package org.umlg.sqlg.test.echo;

import org.apache.tinkerpop.gremlin.structure.T;
import org.apache.tinkerpop.gremlin.structure.Vertex;
import org.junit.Assert;
import org.junit.Test;
import org.postgis.Point;
import org.umlg.sqlg.structure.SqlgGraph;
import org.umlg.sqlg.test.BaseTest;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 * Created by julien
 * Interface for Query (How busy is the truck lane between Point A and Point B on specific Highway from Start_Date to End_Date )
 * Interface for Query (How many trucks originating from Point A between Start_Date to End_Date )
 * Interface for Query (What is the Cost of Goods for all truck routes that drive through specific zipcode )
 * Interface for Storing Data ( Transaction to Lane or Specific Route)
 * Interface for Storing Data ( zip code to highway)
 * Interface for Storing Data ( Transaction To Zipcode or Highway)
 */
public class TestGis extends BaseTest {

    //Interface for Adding Point(Zipcode)
    public void addZipcode(String zipcode) {
        Vertex point = this.sqlgGraph.addVertex(T.label, "Point", "Zipcode", zipcode);
        this.sqlgGraph.tx().commit();
    }

    //Add Transaction Vertex and its relations
    public void addTransaction(String transaction_id, Vertex agent, Vertex trucker, Vertex customer) {
        Vertex transaction = this.sqlgGraph.addVertex(T.label, "Transaction", "TransactionID", transaction_id);
        transaction.addEdge("agent_id", agent);
        transaction.addEdge("trucker_id", trucker);
        transaction.addEdge("customer_id", customer);
        this.sqlgGraph.tx().commit();
    }

    //Interface for Storing Data ( Transaction to Lane or Specific Route)
    public void addZipcode(String transaction_id, boolean loads_type, String furniture_type, float furniture_quantity, Vertex lane) {
        Vertex transaction = this.sqlgGraph.addVertex(T.label, "Transaction", "TransactionID", transaction_id);
        Vertex loads = this.sqlgGraph.addVertex(T.label, "Loads", "Type", loads_type);
        Vertex furniture = this.sqlgGraph.addVertex(T.label, "Furniture", "Type", furniture_type, "Quantity", furniture_quantity);
        Vertex loads = this.sqlgGraph.addVertex(T.label, "Loads", "Type", loads_type);
        transaction.addEdge("loads_id", loads);
        loads.addEdge("furniture_id", furniture);
        loads.addEdge("lane_id", lane);
        this.sqlgGraph.tx().commit();
    }

    //Interface for Storing Data ( Transaction to Lane or Specific Route)
    public void addZipcode(Vertex transaction, boolean loads_type, String furniture_type, float furniture_quantity, Vertex lane) {
        Vertex loads = this.sqlgGraph.addVertex(T.label, "Loads", "Type", loads_type);
        Vertex furniture = this.sqlgGraph.addVertex(T.label, "Furniture", "Type", furniture_type, "Quantity", furniture_quantity);
        Vertex loads = this.sqlgGraph.addVertex(T.label, "Loads", "Type", loads_type);
        transaction.addEdge("loads_id", loads);
        loads.addEdge("furniture_id", furniture);
        loads.addEdge("lane_id", lane);
        this.sqlgGraph.tx().commit();
    }

    //Interface for Storing Data ( zip code to highway)
    public void addRelationZipocdeToHighway(Vertex point, Vertex highway) {
        point.addEdge("linked_highway", highway);
        this.sqlgGraph.tx().commit();
    }

    //Interface for Storing Data ( Transaction To Zipcode)
    public void addRelationTrasactionToZipcode(String transaction_id, String origin_zipcode, String destination_zipcode) {
        Vertex start_point = this.sqlgGraph.traversal().V().hasLabel("Point").has("Zipcode", origin_zipcode);

        if(start_point == null) {
            start_point = this.sqlgGraph.addVertex(T.label, "Point", "Zipcode", origin_zipcode);
        }

        Vertex end_point = this.sqlgGraph.traversal().V().hasLabel("Point").has("Zipcode", destination_zipcode);

        if(end_point == null) {
            end_point = this.sqlgGraph.addVertex(T.label, "Point", "Zipcode", destination_zipcode);
        }  

        Vertex lane = this.sqlgGraph.traversal().V().hasLabel("Transaction").has("TransactionID", transaction_id).out("loads_id").out("land_id");
        lane.addEdge("origin_point", start_point);
        lane.addEdge("destination_point", end_point); 
        this.sqlgGraph.tx().commit();   
    }

    //Interface for Storing Data (Add Loads and its relation)
    public void addLoadsAndItsRelation(String loads_id, boolean loads_type, String furniture_id, String lane_id) {
        Vertex furniture = this.sqlgGraph.traversal().V().hasLabel("Furniture").has("FurnitureID", furniture_id);

        if(furniture == null) {
            furniture = this.sqlgGraph.addVertex(T.label, "Furniture", "furniture_id", furniture_id);
        }

        Vertex lane = this.sqlgGraph.traversal().V().hasLabel("Lane").has("LaneID", lane_id);

        if(lane == null) {
            lane = this.sqlgGraph.addVertex(T.label, "Lane", "LaneID", lane_id);
        }  

        Vertex loads = this.sqlgGraph.addVertex(T.label, "Loads", "loads_id", loads_id, "Type", loads_type);
        loads.addEdge("land_id", lane);
        loads.addEdge("furniture_id", furniture); 
        this.sqlgGraph.tx().commit();   
    }

    //Interface for Storing Data (Add Furniture)
    public void addLoadsAndItsRelation(String furniture_id, float price, float quantity) {
        Vertex furniture = this.sqlgGraph.traversal().V().hasLabel("Furniture").has("FurnitureID", furniture_id);

        if(furniture != null) {
            furniture =  this.sqlgGraph.removeVertex(furniture);
        }

        furniture = this.sqlgGraph.addVertex(T.label, "Furniture", "furniture_id", furniture_id, "price", price, "quantity", quantity);
        
    }


    //Interface for Query (How busy is the truck lane between Point A and Point B on specific Highway from Start_Date to End_Date )
    /**
     * Parameter: lane_id, start_date and end_date
     * Date Formate: "YYYY-MM-DD"
     * Return Value: Count of specific lane
    */
    public int getLaneCount(String lane_id, String start_date, String end_date) {
        int count = this.sqlgGraph.traversal().V().hasLabel("Transaction").has("date", T.gte, start_date).has("date", T.lte, end_date).out("loads_id").has("LaneID", lane_id).count();
        this.sqlgGraph.tx().commit();   

        return count;
    }

    //Interface for Query (How many trucks originating from Point A between Start_Date to End_Date )
    /**
     * Parameter: zipcode, start_date and end_date
     * Date Formate: "YYYY-MM-DD"
     * Return Value: Count of trasactions originating from specific zipcode.
    */
    public int getCountOfOriginatingFromPoint(String zipcode, String start_date, String end_date) {
        int count = this.sqlgGraph.traversal().V().hasLabel("Transaction").has("date", T.gte, start_date).has("date", T.lte, end_date).out("loads_id").out("lane_id").out("origin_point").has('Zipcode', zipcode).count();
        this.sqlgGraph.tx().commit();  

        return count; 
    }

    //Interface for Query (What is the Cost of Goods for all truck routes that drive through specific zipcode )
    /**
     * Parameter: start_date and end_date
     * Date Formate: "YYYY-MM-DD"
     * Return Value: Sum of furnitures
    */
    public float getCountOfOriginatingFromPoint(String zipcode, String start_date, String end_date) {
        float sum = this.sqlgGraph.traversal().V().hasLabel("Transaction").has("date", T.gte, start_date).has("date", T.lte, end_date).out("loads_id").out("furniture_id").values('total_price').sum();
        this.sqlgGraph.tx().commit(); 

        return sum;  
    }

    //Interface for Query (What is the Cost of Goods for all truck routes that drive through specific zipcode )
    /**
     * Parameter: zipcode
     * Date Formate: "YYYY-MM-DD"
     * Return Value: Sum of furnitures
    */
    public float getCountOfOriginatingFromPoint(String zipcode) {
        float sum = this.sqlgGraph.traversal().V().hasLabel("Transaction").out("loads_id").out("furniture_id").values('total_price').sum();
        this.sqlgGraph.tx().commit(); 

        return sum;  
    }



}