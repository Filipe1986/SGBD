package br.com.sistemafjm.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import br.com.sistemafjm.Daos.UsuarioDAO;
import br.com.sistemafjm.controllers.HomeController;

/**
 * Exclusivo para a parte web
 *
 * @author Filipe
 *
 */
@EnableWebMvc // Ativa o mvc
@ComponentScan(basePackageClasses = {HomeController.class, UsuarioDAO.class})
public class AppWebConfiguration extends WebMvcConfigurerAdapter {

    @Bean
    public InternalResourceViewResolver internalResourceViewResolver() {

        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");

        return resolver;

    }

    /**
     * Configurações para o resources Aqui estão os arquivos de js, bootstrap,
     * img, css
     */
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Bean
    public MultipartResolver multipartResolver() {

        return new StandardServletMultipartResolver();

    }
}
