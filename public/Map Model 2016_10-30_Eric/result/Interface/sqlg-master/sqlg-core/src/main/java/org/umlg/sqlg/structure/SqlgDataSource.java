package org.umlg.sqlg.structure;

import com.google.common.base.Preconditions;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.configuration.Configuration;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/**
 * Date: 2014/07/12
 * Time: 7:00 AM
 */
public class SqlgDataSource {

    @SuppressWarnings("WeakerAccess")
    public static final String JDBC_URL = "jdbc.url";
    @SuppressWarnings("WeakerAccess")
    public static final String JNDI_PREFIX = "jndi:";
    private static Logger logger = LoggerFactory.getLogger(SqlgDataSource.class.getName());
    private final Map<String, DataSource> dss = new HashMap<>();

    private SqlgDataSource() {
    }

    public final DataSource get(String jdbcUrl) {
        return this.dss.get(jdbcUrl);
    }

    public static SqlgDataSource setupDataSource(String driver, final Configuration configuration) throws PropertyVetoException {
        SqlgDataSource ds = new SqlgDataSource();
        Preconditions.checkState(configuration.containsKey(JDBC_URL));
        Preconditions.checkState(configuration.containsKey("jdbc.username"));
        Preconditions.checkState(configuration.containsKey("jdbc.password"));
        String connectURI = configuration.getString(JDBC_URL);
        String username = configuration.getString("jdbc.username");
        String password = configuration.getString("jdbc.password");

        if (ds.dss.get(connectURI) != null) {
            return ds;
        }
        //this odd logic is for travis, it needs log feedback to not kill the build
        if (configuration.getString(JDBC_URL).contains("postgresql")) {
            logger.debug(String.format("Setting up dataSource to %s for user %s", connectURI, username));
        } else {
            logger.debug(String.format("Setting up dataSource to %s for user %s", connectURI, username));
        }
        ComboPooledDataSource comboPooledDataSource = new ComboPooledDataSource();
        comboPooledDataSource.setDriverClass(driver);
        comboPooledDataSource.setJdbcUrl(connectURI);
        comboPooledDataSource.setMaxPoolSize(configuration.getInt("maxPoolSize", 100));
        comboPooledDataSource.setMaxIdleTime(configuration.getInt("maxIdleTime", 500));
        if (!StringUtils.isEmpty(username)) {
            comboPooledDataSource.setUser(username);
        }
        if (!StringUtils.isEmpty(username)) {
            comboPooledDataSource.setPassword(password);
        }
        ds.dss.put(connectURI, comboPooledDataSource);
        return ds;
    }

    static SqlgDataSource setupDataSourceFromJndi(String jndiName, Configuration configuration)
            throws NamingException {
        SqlgDataSource gds = new SqlgDataSource();
        InitialContext ctx = new InitialContext();
        DataSource ds = (DataSource) ctx.lookup(jndiName);
        String uri = configuration.getString(JDBC_URL);
        gds.dss.put(uri, ds);
        return gds;
    }

    public void close(String jdbcUrl) {
        DataSource remove = this.dss.remove(jdbcUrl);
        ComboPooledDataSource managed = remove != null && (remove instanceof ComboPooledDataSource)
                ? (ComboPooledDataSource) remove
                : null;

        try {
            if (managed != null) {
                int numBusyConnections = managed.getNumBusyConnections();
                if (numBusyConnections > 0) {
                    logger.debug("Open connection on calling close. " + numBusyConnections);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (managed != null)
                managed.close();
        }
    }

    public String getPoolStatsAsJson() {
        try {
            StringBuilder json = new StringBuilder();
            json.append("[");
            int count = 1;
            for (Map.Entry<String, DataSource> entry : this.dss.entrySet()) {
                json.append("{\"jdbcUrl\":\"").append(entry.getKey()).append("\",");

                if (entry.getValue() instanceof ComboPooledDataSource) {
                    ComboPooledDataSource comboPooledDataSource = (ComboPooledDataSource) entry.getValue();
                    json.append("\"jndi\": false,");
                    json.append("\"numConnections\":\"")
                            .append(String.valueOf(comboPooledDataSource.getNumConnections())).append("\",");
                    json.append("\"numBusyConnections\":\"")
                            .append(String.valueOf(comboPooledDataSource.getNumConnections())).append("\",");
                    json.append("\"numIdleConnections\":\"")
                            .append(String.valueOf(comboPooledDataSource.getNumConnections())).append("\",");
                    json.append("\"numUnclosedOrphanedConnections\":\"")
                            .append(String.valueOf(comboPooledDataSource.getNumConnections())).append("\",");
                    json.append("\"numMinPoolSize\":\"").append(String.valueOf(comboPooledDataSource.getMinPoolSize()))
                            .append("\",");
                    json.append("\"numMaxPoolSize\":\"").append(String.valueOf(comboPooledDataSource.getMaxPoolSize()))
                            .append("\",");
                    json.append("\"numMaxIdleTime\":\"").append(String.valueOf(comboPooledDataSource.getMaxIdleTime()))
                            .append("\"");
                } else {
                    json.append("\"jndi\": true");
                }
                json.append("}");
                if (count++ < this.dss.size()) {
                    json.append(",");
                }
            }
            json.append("]");
            return json.toString();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /*
     final static Set<String> TO_STRING_IGNORE_PROPS = new HashSet<>(Arrays.asList(new String[]{
     "connection",
     "lastAcquisitionFailureDefaultUser",
     "lastCheckinFailureDefaultUser",
     "lastCheckoutFailureDefaultUser",
     "lastConnectionTestFailureDefaultUser",
     "lastIdleTestFailureDefaultUser",
     "logWriter",
     "loginTimeout",
     "numBusyConnections",
     "numBusyConnectionsAllUsers",
     "numBusyConnectionsDefaultUser",
     "numConnections",
     "numConnectionsAllUsers",
     "numConnectionsDefaultUser",
     "numFailedCheckinsDefaultUser",
     "numFailedCheckoutsDefaultUser",
     "numFailedIdleTestsDefaultUser",
     "numIdleConnections",
     "numIdleConnectionsAllUsers",
     "numThreadsAwaitingCheckoutDefaultUser",
     "numIdleConnectionsDefaultUser",
     "numUnclosedOrphanedConnections",
     "numUnclosedOrphanedConnectionsAllUsers",
     "numUnclosedOrphanedConnectionsDefaultUser",
     "numUserPools",
     "effectivePropertyCycleDefaultUser",
     "parentLogger",
     "startTimeMillisDefaultUser",
     "statementCacheNumCheckedOutDefaultUser",
     "statementCacheNumCheckedOutStatementsAllUsers",
     "statementCacheNumConnectionsWithCachedStatementsAllUsers",
     "statementCacheNumConnectionsWithCachedStatementsDefaultUser",
     "statementCacheNumStatementsAllUsers",
     "statementCacheNumStatementsDefaultUser",
     "statementDestroyerNumConnectionsInUseAllUsers",
     "statementDestroyerNumConnectionsWithDeferredDestroyStatementsAllUsers",
     "statementDestroyerNumDeferredDestroyStatementsAllUsers",
     "statementDestroyerNumConnectionsInUseDefaultUser",
     "statementDestroyerNumConnectionsWithDeferredDestroyStatementsDefaultUser",
     "statementDestroyerNumDeferredDestroyStatementsDefaultUser",
     "statementDestroyerNumThreads",
     "statementDestroyerNumActiveThreads",
     "statementDestroyerNumIdleThreads",
     "statementDestroyerNumTasksPending",
     "threadPoolSize",
     "threadPoolNumActiveThreads",
     "threadPoolNumIdleThreads",
     "threadPoolNumTasksPending",
     "threadPoolStackTraces",
     "threadPoolStatus",
     "overrideDefaultUser",
     "overrideDefaultPassword",
     "password",
     "reference",
     "upTimeMillisDefaultUser",
     "user",
     "userOverridesAsString",
     "allUsers",
     "connectionPoolDataSource",
     "propertyChangeListeners",
     "vetoableChangeListeners"
     }));
     */

}
