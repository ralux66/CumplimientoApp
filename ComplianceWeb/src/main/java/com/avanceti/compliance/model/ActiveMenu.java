package com.avanceti.compliance.model;

public class ActiveMenu {	 

    String search;
    String pep;
    String blacklist;
    String mostwanted;
    String configuration;
    String client;
    String modulos;
    String user;
    String profile;
    String menus;
   

    public ActiveMenu() {
          super();
          this.search = "";
          this.pep =  "";
          this.blacklist =  "";
          this.mostwanted =  "";
          this.configuration =  "";
          this.client =  "";
          this.modulos =  "";
          this.user =  "";
          this.profile =  "";
          this.menus =  "";
    }   

    public String getSearch() {
          return search;
    }

    public void setSearch(String search) {
          this.search = search;
    }

    public String getPep() {
          return pep;
    }

    public void setPep(String pep) {
          this.pep = pep;
    }

    public String getBlacklist() {
          return blacklist;
    }

    public void setBlacklist(String blacklist) {
          this.blacklist = blacklist;
    }

    public String getMostwanted() {
          return mostwanted;
    }

    public void setMostwanted(String mostwanted) {
          this.mostwanted = mostwanted;
    }

    public String getConfiguration() {
          return configuration;
    }

    public void setConfiguration(String configuration) {
          this.configuration = configuration;
    }

    public String getClient() {
          return client;
    }

    public void setClient(String client) {
          this.client = client;
    }

    public String getModulos() {
          return modulos;
    }

    public void setModulos(String modulos) {
          this.modulos = modulos;
    }

    public String getUser() {
          return user;
    }

    public void setUser(String user) {
          this.user = user;
    }

    public String getProfile() {
          return profile;
    }

    public void setProfile(String profile) {
          this.profile = profile;
    }

    public String getMenus() {
          return menus;
    }

    public void setMenus(String menus) {
          this.menus = menus;
    }

}