package br.com.sistemafjm.configuration;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
public class JPAConfiguration {

    /**
     * COnfiguração da conexão do banco de dados Mysql
     */
    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
        LocalContainerEntityManagerFactoryBean factoryBean = new LocalContainerEntityManagerFactoryBean();
        JpaVendorAdapter jpaVendorAdapter = new HibernateJpaVendorAdapter();

        factoryBean.setJpaVendorAdapter(jpaVendorAdapter);

        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUsername("root");
        dataSource.setPassword("root");
        dataSource.setUrl("jdbc:mysql://localhost:3306/sistemafjm");
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");

        factoryBean.setDataSource(dataSource);

        Properties props = new Properties();
        props.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
        props.setProperty("hibernate.show_sql", "true");
        props.setProperty("hibernate.hbm2ddl.auto", "update");

        factoryBean.setJpaProperties(props);

        factoryBean.setPackagesToScan("br.com.sistemafjm.Models");

        return factoryBean;

    }

    /**
     * Gerenciador de transações do Java Persistence Api
     */
    @Bean
    public JpaTransactionManager jpaTransactionManager(EntityManagerFactory entityManagerFactory) {
        return new JpaTransactionManager(entityManagerFactory);

    }
    /*
	 * @Bean public LocalContainerEntityManagerFactoryBean
	 * entityManagerFactory() { LocalContainerEntityManagerFactoryBean
	 * factoryBean = new LocalContainerEntityManagerFactoryBean();
	 * JpaVendorAdapter jpaVendorAdapter = new HibernateJpaVendorAdapter();
	 * 
	 * factoryBean.setJpaVendorAdapter(jpaVendorAdapter);
	 * 
	 * DriverManagerDataSource dataSource = new DriverManagerDataSource();
	 * dataSource.setUsername("postgres"); dataSource.setPassword("root");
	 * 
	 * dataSource.setUrl("jdbc:postgresql://localhost:5433/hibernatedb");
	 * dataSource.setDriverClassName("org.postgresql.Driver");
	 * 
	 * factoryBean.setDataSource(dataSource);
	 * 
	 * Properties props = new Properties();
	 * props.setProperty("hibernate.dialect",
	 * "org.hibernate.dialect.PostgreSQLDialect");
	 * props.setProperty("hibernate.show_sql", "true");
	 * props.setProperty("hibernate.hbm2ddl.auto", "update");
	 * 
	 * factoryBean.setJpaProperties(props);
	 * 
	 * factoryBean.setPackagesToScan("br.com.sistemafjm.Models");
	 * 
	 * return factoryBean;
	 * 
	 * }
     */
}
