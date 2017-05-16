package com.neo4j.repository.datasource;

import java.util.List;

import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;
import org.springframework.transaction.annotation.Transactional;

import com.neo4j.model.DataSourceModel;
@Transactional
public interface DataSourceRepository extends GraphRepository<DataSourceModel>, RelationshipOperationsRepository<DataSourceModel>{

	List<DataSourceModel> findBySourceName(String sourceName);

	@Query("MATCH (n:DataSourceModel) where n.sourceName CONTAINS {0} RETURN n")	
	List<DataSourceModel> findBysourceName(String sourceName);
	
}