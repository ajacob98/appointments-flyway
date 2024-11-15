package com.alntech.appointments_flyway;

import org.flywaydb.core.Flyway;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class AppointmentsFlywayApplication {
	private static final Logger logger = LoggerFactory.getLogger(AppointmentsFlywayApplication.class);

	public static void main(String[] args) {
		logger.info("Starting migration");
		Flyway flyway = Flyway.configure()
				.dataSource("jdbc:postgresql://localhost:5432/appointmentsdb", "flywaylocal", "pass")
				.baselineOnMigrate(true)
				.load();

		// Start the migration
		flyway.migrate();
	}

}
