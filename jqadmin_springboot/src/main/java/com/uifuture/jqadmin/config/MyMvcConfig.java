package com.uifuture.jqadmin.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;

@Configuration
@EnableWebMvc //开启SpringMVC支持，如无此注解，重写WebMvcConfigurerAdapter类的方法无效
@ComponentScan("com.uifuture")
public class MyMvcConfig implements WebMvcConfigurer {
    //WebMvcConfigurerAdapter被弃用
    //集成WebMvcConfigurerAdapter类，重写其方法可对Spring MVC进行配置
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/admin").setViewName("/admin");
        registry.addViewController("/admin-permission").setViewName("/admin-permission");
        registry.addViewController("/admin-role").setViewName("/admin-role");
        registry.addViewController("/admin-role-add").setViewName("/admin-role-add");
        registry.addViewController("/admin-role-edit").setViewName("/admin-role-edit");

        registry.addViewController("/article").setViewName("/article");
        registry.addViewController("/article-add").setViewName("/article-add");
        registry.addViewController("/article-cat").setViewName("/article-cat");
        registry.addViewController("/article-edit").setViewName("/article-edit");

        registry.addViewController("/brand").setViewName("/brand");
        registry.addViewController("/config").setViewName("/config");
        registry.addViewController("/index").setViewName("/index");
        registry.addViewController("/login").setViewName("/login");

        registry.addViewController("/member").setViewName("/member");
        registry.addViewController("/member-level").setViewName("/member-level");
        registry.addViewController("/member-statistics").setViewName("/member-statistics");
        registry.addViewController("/menu").setViewName("/menu");

        registry.addViewController("/msg").setViewName("/msg");
        registry.addViewController("/product").setViewName("/product");
        registry.addViewController("/product-add").setViewName("/product-add");
        registry.addViewController("/product-edit").setViewName("/product-edit");
        registry.addViewController("/product-cat").setViewName("/product-cat");
        registry.addViewController("/shielding").setViewName("/shielding");
        registry.addViewController("/sys-log").setViewName("/sys-log");
        registry.addViewController("/tag").setViewName("/tag");
        registry.addViewController("/user-info").setViewName("/user-info");
        registry.addViewController("/welcome").setViewName("/welcome");

        registry.addViewController("/common/header").setViewName("/common/header");
        registry.addViewController("/common/version").setViewName("/common/version");

        registry.addViewController("/tpl/admin").setViewName("/tpl/admin");
        registry.addViewController("/tpl/article").setViewName("/tpl/article");
        registry.addViewController("/tpl/brand").setViewName("/tpl/brand");
        registry.addViewController("/tpl/cat").setViewName("/tpl/cat");
        registry.addViewController("/tpl/member").setViewName("/tpl/member");
        registry.addViewController("/tpl/member-level").setViewName("/tpl/member-level");
        registry.addViewController("/tpl/menu").setViewName("/tpl/menu");
        registry.addViewController("/tpl/menu-list").setViewName("/tpl/menu-list");
        registry.addViewController("/tpl/msg").setViewName("/tpl/msg");
        registry.addViewController("/tpl/permission").setViewName("/tpl/permission");
        registry.addViewController("/tpl/product").setViewName("/tpl/product");
        registry.addViewController("/tpl/role").setViewName("/tpl/role");
        registry.addViewController("/tpl/select-cat").setViewName("/tpl/select-cat");
        registry.addViewController("/tpl/tag").setViewName("/tpl/tag");

        //addViewController是访问的URL，setViewName是设置in.jsp
    }
    /**
     * 配置静态访问资源
     * @param registry
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**").addResourceLocations("classpath:/static/");
    }


    /**
     * 1、 extends WebMvcConfigurationSupport -> implements WebMvcConfigurer
     * 2、重写下面方法;
     * setUseSuffixPatternMatch : 设置是否是后缀模式匹配，如“/user”是否匹配/user.*，默认真即匹配；
     * setUseTrailingSlashMatch : 设置是否自动后缀路径模式匹配，如“/user”是否匹配“/user/”，默认真即匹配；
     */
    @Override
    public void configurePathMatch(PathMatchConfigurer configurer) {
        configurer.setUseSuffixPatternMatch(true)
                .setUseTrailingSlashMatch(true);
    }

}