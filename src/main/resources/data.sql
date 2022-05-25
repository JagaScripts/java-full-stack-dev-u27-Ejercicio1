DROP DATABASE IF EXISTS `piezas_y_proveedores`;
CREATE DATABASE IF NOT EXISTS `piezas_y_proveedores`;

USE `piezas_y_proveedores`;

DROP TABLE IF EXISTS `piezas_y_proveedores`.`piezas`;
CREATE TABLE `piezas_y_proveedores`.`piezas` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `nombre` NVARCHAR(100) NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `piezas_y_proveedores`.`proveedores` (
  `id` CHAR(4) NOT NULL,
  `nombre` NVARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `piezas_y_proveedores`.`suministra`;
CREATE TABLE `piezas_y_proveedores`.`suministra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_pieza` INT NOT NULL,
  `id_proveedor` CHAR(4) NOT NULL,
  `precio` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

ALTER TABLE `piezas_y_proveedores`.`suministra` 
ADD INDEX `proveedores_fk_idx` (`id_proveedor` ASC) VISIBLE;

ALTER TABLE `piezas_y_proveedores`.`suministra` 
ADD CONSTRAINT `proveedores_fk`
  FOREIGN KEY (`id_proveedor`)
  REFERENCES `piezas_y_proveedores`.`proveedores` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
  INSERT INTO piezas (nombre) VALUES 
('Batería'),
('Bombillas'),
('Discos de frenos'),
('Parabrisas'),
('Indicador de presión de neumáticos'),
('Faros delanteros'),
('Bujías'),
('Mando de llave a distancia'),
('Tiradores de puertas y seguros de cierre'),
('Fusibles');

INSERT INTO proveedores (id, nombre) VALUES 
('000A', 'Tiendas Aurgi'),
('000B', 'Autoexpress'),
('000C', 'Totcar'),
('000D', 'Oscaro'),
('000E', 'Recambios-expres'),
('000F', 'Norauto'),
('000G', 'Rexbo'),
('000H', 'Piezascochesonline'),
('000I', 'Dosochoauto'),
('001J', 'Recambioclasico');

INSERT INTO suministra (codigo_pieza, id_proveedor, precio) VALUES 
(1, '000A', 75),
(2, '000B', 15),
(3, '000C', 300),
(4, '000D', 20),
(5, '000E', 60),
(6, '000F', 45),
(7, '000G', 15),
(8, '000H', 55),
(9, '000I', 100),
(10,'001J', 35);
