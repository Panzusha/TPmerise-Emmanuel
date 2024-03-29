-- Generated by Mocodo 4.1.2

-- Création de la base de données
CREATE DATABASE IF NOT EXISTS TPmerise;

-- Utilisation de la base de données
USE TPmerise;

CREATE TABLE IF NOT EXISTS Category (
  id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name         VARCHAR(100),
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS pivot (
  PRIMARY KEY (num_order_1, num_product_1),
  num_order_1   BIGINT UNSIGNED FOREIGN KEY AUTO_INCREMENT,
  num_product_1 BIGINT UNSIGNED FOREIGN KEY AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS Order (
  id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  num_invoice VARCHAR(100),
  status      TEXT NOT NULL,
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  num_user    BIGINT UNSIGNED FOREIGN KEY AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS Product (
  id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name         VARCHAR(100),
  quantity     BIGINT UNSIGNED (100),
  status       BIGINT UNSIGNED (100),
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  num_category BIGINT UNSIGNED FOREIGN KEY AUTO_INCREMENT,
  num_tag      BIGINT UNSIGNED FOREIGN KEY AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS Tag (
  id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name       VARCHAR(100),
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS User (
  id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name       VARCHAR(100),
  password   VARCHAR(255),
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE pivot ADD FOREIGN KEY (num_product_1) REFERENCES PRODUCT (id);
ALTER TABLE pivot ADD FOREIGN KEY (num_order_1) REFERENCES ORDER (id);

ALTER TABLE ORDER ADD FOREIGN KEY (num_user) REFERENCES USER (id);

ALTER TABLE PRODUCT ADD FOREIGN KEY (num_tag) REFERENCES TAG (id);
ALTER TABLE PRODUCT ADD FOREIGN KEY (num_category) REFERENCES CATEGORY (id);
