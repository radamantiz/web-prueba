-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2022 a las 21:55:41
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"webhubsena\",\"table\":\"equipo\"},{\"db\":\"webhubsena\",\"table\":\"ambiente\"},{\"db\":\"webhubsena\",\"table\":\"usuario\"},{\"db\":\"webhubsena\",\"table\":\"rol\"},{\"db\":\"webhubsena\",\"table\":\"sugerencia\"},{\"db\":\"webhubsena\",\"table\":\"reserva\"},{\"db\":\"webhubsena\",\"table\":\"novedad\"},{\"db\":\"easygameho\",\"table\":\"incidencias\"},{\"db\":\"easygameho\",\"table\":\"consolas\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'webhubsena', 'ambiente', '{\"CREATE_TIME\":\"2022-08-16 12:28:35\",\"col_order\":[0,1,2,3,4],\"col_visib\":[1,1,1,1,1]}', '2022-08-16 19:01:24'),
('root', 'webhubsena', 'equipo', '{\"sorted_col\":\"`equipo`.`estado` ASC\"}', '2022-08-17 20:01:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__tracking`
--

INSERT INTO `pma__tracking` (`db_name`, `table_name`, `version`, `date_created`, `date_updated`, `schema_snapshot`, `schema_sql`, `data_sql`, `tracking`, `tracking_active`) VALUES
('webhubsena', 'equipo', 1, '2022-08-16 22:17:18', '2022-08-16 22:17:18', 'a:2:{s:7:\"COLUMNS\";a:6:{i:0;a:8:{s:5:\"Field\";s:8:\"idEquipo\";s:4:\"Type\";s:7:\"int(11)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"PRI\";s:7:\"Default\";N;s:5:\"Extra\";s:14:\"auto_increment\";s:7:\"Comment\";s:0:\"\";}i:1;a:8:{s:5:\"Field\";s:6:\"codigo\";s:4:\"Type\";s:11:\"varchar(30)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:2;a:8:{s:5:\"Field\";s:6:\"nombre\";s:4:\"Type\";s:11:\"varchar(55)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:3;a:8:{s:5:\"Field\";s:6:\"estado\";s:4:\"Type\";s:11:\"varchar(14)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:4;a:8:{s:5:\"Field\";s:11:\"FK_ambiente\";s:4:\"Type\";s:7:\"int(11)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"MUL\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:5;a:8:{s:5:\"Field\";s:6:\"activo\";s:4:\"Type\";s:10:\"tinyint(1)\";s:9:\"Collation\";N;s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}}s:7:\"INDEXES\";a:2:{i:0;a:13:{s:5:\"Table\";s:6:\"equipo\";s:10:\"Non_unique\";s:1:\"0\";s:8:\"Key_name\";s:7:\"PRIMARY\";s:12:\"Seq_in_index\";s:1:\"1\";s:11:\"Column_name\";s:8:\"idEquipo\";s:9:\"Collation\";s:1:\"A\";s:11:\"Cardinality\";s:3:\"616\";s:8:\"Sub_part\";N;s:6:\"Packed\";N;s:4:\"Null\";s:0:\"\";s:10:\"Index_type\";s:5:\"BTREE\";s:7:\"Comment\";s:0:\"\";s:13:\"Index_comment\";s:0:\"\";}i:1;a:13:{s:5:\"Table\";s:6:\"equipo\";s:10:\"Non_unique\";s:1:\"1\";s:8:\"Key_name\";s:11:\"FK_ambiente\";s:12:\"Seq_in_index\";s:1:\"1\";s:11:\"Column_name\";s:11:\"FK_ambiente\";s:9:\"Collation\";s:1:\"A\";s:11:\"Cardinality\";s:2:\"61\";s:8:\"Sub_part\";N;s:6:\"Packed\";N;s:4:\"Null\";s:0:\"\";s:10:\"Index_type\";s:5:\"BTREE\";s:7:\"Comment\";s:0:\"\";s:13:\"Index_comment\";s:0:\"\";}}}', '# log 2022-08-16 22:17:18 root\nDROP TABLE IF EXISTS `equipo`;\n# log 2022-08-16 22:17:18 root\n\nCREATE TABLE `equipo` (\n  `idEquipo` int(11) NOT NULL,\n  `codigo` varchar(30) DEFAULT NULL,\n  `nombre` varchar(55) NOT NULL,\n  `estado` varchar(14) NOT NULL,\n  `FK_ambiente` int(11) NOT NULL,\n  `activo` tinyint(1) DEFAULT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n', '\n', 'UPDATE,INSERT,DELETE,TRUNCATE,CREATE TABLE,ALTER TABLE,RENAME TABLE,DROP TABLE,CREATE INDEX,DROP INDEX', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-29 19:45:32', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `webhubsena`
--
CREATE DATABASE IF NOT EXISTS `webhubsena` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webhubsena`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambiente`
--

CREATE TABLE `ambiente` (
  `idAmbiente` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `aforo` int(11) DEFAULT NULL,
  `ubicacion` varchar(7) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ambiente`
--

INSERT INTO `ambiente` (`idAmbiente`, `nombre`, `aforo`, `ubicacion`, `activo`) VALUES
(1, 'Trabajo colaborativo 1', 2, 'piso 1', 1),
(2, 'Trabajo colaborativo 2', 2, 'piso 1', 1),
(3, 'Trabajo colaborativo 3', 2, 'piso 1', 1),
(4, 'Trabajo colaborativo 4', 2, 'piso 1', 1),
(5, 'Trabajo colaborativo 5', 2, 'piso 1', 1),
(6, 'Punto de impresión', 1, 'piso 1', 1),
(7, 'Cabinas', 2, 'piso 1', 1),
(8, 'Mesa colaborativa 1', 2, 'piso 1', 1),
(9, 'Mesa colaborativa 2', 2, 'piso 1', 1),
(10, 'Mesa colaborativa 3', 2, 'piso 1', 1),
(11, 'trabajo colaborativo 6', 8, 'piso 1', 1),
(12, 'Sala colaborativa 1', 2, 'piso 1', 1),
(13, 'Sala colaborativa 2', 2, 'piso 1', 1),
(14, 'Sala colaborativa 3', 2, 'piso 1', 1),
(15, 'Sala empresarial', 6, 'piso 1', 1),
(16, 'Barismo', 16, 'piso 1', 1),
(17, 'Sala de espera', 3, 'piso 1', 1),
(18, 'Desarrolos digitales 1', 8, 'piso 5', 1),
(19, 'Desarrolos digitales 2', 16, 'piso 5', 1),
(20, 'Zona de ideación', 3, 'piso 5', 1),
(21, 'Seguridad y control', 4, 'piso 5', 1),
(22, 'Terraza', 10, 'piso 5', 1),
(23, 'World skills', 23, 'piso 5', 1),
(24, 'Laboratorio', 8, 'piso 13', 1),
(25, 'Banca', 9, 'piso 13', 1),
(26, 'Fiducia', 9, 'piso 13', 1),
(27, 'Seguros', 16, 'piso 13', 1),
(28, 'Pensiones', 8, 'piso 13', 1),
(29, 'Operación bursatil', 24, 'piso 13', 1),
(30, 'BPO', 13, 'piso 13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `idEquipo` int(11) NOT NULL,
  `codigo` varchar(30) DEFAULT NULL,
  `nombre` varchar(55) NOT NULL,
  `estado` varchar(14) NOT NULL,
  `FK_ambiente` int(11) NOT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idEquipo`, `codigo`, `nombre`, `estado`, `FK_ambiente`, `activo`) VALUES
(1, 'NO', 'SILLA GOA', 'DISPONIBLE', 1, 1),
(2, 'NO', 'LOCKER 30 ESPACIOS', 'EN USO', 1, 1),
(3, '21030143OR734890370001', 'PUFF GRIS', 'EN USO', 1, 1),
(4, 'NO', 'SILLA AZUL', 'EN USO', 1, 1),
(5, 'NO', 'SILLA AZUL', 'EN USO', 1, 1),
(6, 'P1-001', 'MESA MADERA CUADRADA', 'EN USO', 1, 1),
(7, 'MC1-001', 'MESA MADERA REDONDA', 'EN USO', 1, 1),
(8, 'NO', 'PUFF BEIGE', 'EN USO', 1, 1),
(9, 'NO', 'EXTINTOR', 'EN USO', 2, 1),
(10, 'NO', 'PUFF GRIS', 'EN USO', 2, 1),
(11, 'NO', 'SILLA AZUL', 'EN USO', 2, 1),
(12, 'NO', 'SILLA AZUL', 'EN USO', 2, 1),
(13, 'MC1-002', 'MESA MADERA REDONDA', 'EN USO', 2, 1),
(14, 'NO', 'PUFF BEIGE', 'EN USO', 2, 1),
(15, '21030143OR743040370027', 'SILLA Q5 GIRATORIA', 'EN USO', 3, 1),
(16, '21030143OR743040370037', 'SILLA Q5 GIRATORIA', 'EN USO', 3, 1),
(17, 'NO', 'SILLA Q5 GIRATORIA', 'EN USO', 3, 1),
(18, '21030143OR743040370008', 'SILLA Q5 GIRATORIA', 'EN USO', 3, 1),
(19, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 3, 1),
(20, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 3, 1),
(21, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 3, 1),
(22, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 3, 1),
(23, '21030143OR743040370028', 'SILLA Q5 GIRATORIA', 'EN USO', 4, 1),
(24, '21030143OR743040370013', 'SILLA Q5 GIRATORIA', 'EN USO', 4, 1),
(25, '21030143OR743040370019', 'SILLA Q5 GIRATORIA', 'EN USO', 4, 1),
(26, '21030143OR743040370003', 'SILLA Q5 GIRATORIA', 'EN USO', 4, 1),
(27, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 4, 1),
(28, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 4, 1),
(29, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 4, 1),
(30, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 4, 1),
(31, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 5, 1),
(32, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 5, 1),
(33, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 5, 1),
(34, 'NO', 'MESA BLANCA TRIANGULAR', 'EN USO', 5, 1),
(35, '21030143OR743040370021', 'SILLA Q5 GIRATORIA', 'EN USO', 5, 1),
(36, '21030143OR743040370011', 'SILLA Q5 GIRATORIA', 'EN USO', 5, 1),
(37, '21030143OR743040370012', 'SILLA Q5 GIRATORIA', 'EN USO', 5, 1),
(38, '21030143OR743040370016', 'SILLA Q5 GIRATORIA', 'EN USO', 5, 1),
(39, 'NO', 'GABINETE MADERA', 'EN USO', 6, 1),
(40, 'NO', 'TELEVISOR SAMSUNG', 'EN USO', 6, 1),
(41, 'NO', 'EXTINTOR', 'EN USO', 6, 1),
(42, 'NO', 'MESA CAFE MADERA', 'EN USO', 7, 1),
(43, 'NO', 'MESA CAFE MADERA', 'EN USO', 7, 1),
(44, '21030131OR744260370021', 'SILLA AMARILLA', 'EN USO', 7, 1),
(45, '21030131OR744260370022', 'SILLA AMARILLA', 'EN USO', 7, 1),
(46, 'NO', 'MATERA CUBICA 4 ESPACIOS', 'EN USO', 7, 1),
(47, 'NO', 'MATERA CUBICA 4 ESPACIOS', 'EN USO', 7, 1),
(48, 'NO', 'MESA MADERA CON ENCHUFE', 'EN USO', 8, 1),
(49, 'NO', 'MESA MADERA CON ENCHUFE', 'EN USO', 9, 1),
(50, 'NO', 'MESA MADERA CON ENCHUFE', 'EN USO', 10, 1),
(51, '21030133OR739970370014', 'BUTACO GRIS MADERA', 'EN USO', 8, 1),
(52, '21030133OR739970370004', 'BUTACO GRIS MADERA', 'EN USO', 8, 1),
(53, '21030133OR739970370011', 'BUTACO GRIS MADERA', 'EN USO', 8, 1),
(54, '21030133OR739970370005', 'BUTACO GRIS MADERA', 'EN USO', 8, 1),
(55, 'NO', 'BUTACO GRIS MADERA', 'EN USO', 9, 1),
(56, '21030133OR739970370016', 'BUTACO GRIS MADERA', 'EN USO', 9, 1),
(57, '21030133OR739970370001', 'BUTACO GRIS MADERA', 'EN USO', 9, 1),
(58, '21030133OR739970370007', 'BUTACO GRIS MADERA', 'EN USO', 9, 1),
(59, '21030133OR739970370012', 'BUTACO GRIS MADERA', 'EN USO', 10, 1),
(60, 'NO', 'BUTACO GRIS MADERA', 'EN USO', 10, 1),
(61, '21030133OR739970370018', 'BUTACO GRIS MADERA', 'EN USO', 10, 1),
(62, '21030133OR739970370009', 'BUTACO GRIS MADERA', 'EN USO', 10, 1),
(63, 'NO', 'SILLA GRIS CUADRICULAR', 'EN USO', 11, 1),
(64, 'P1-002', 'MESA MADERA CUADRADA', 'EN USO', 11, 1),
(65, 'P1-003', 'MESA MADERA CUADRADA', 'EN USO', 11, 1),
(66, 'P1-004', 'MESA MADERA CUADRADA', 'EN USO', 11, 1),
(67, 'P1-005', 'MESA MADERA CUADRADA', 'EN USO', 11, 1),
(68, 'P1-006', 'MESA MADERA CUADRADA', 'EN USO', 11, 1),
(69, 'P1-007', 'MESA MADERA CUADRADA', 'EN USO', 11, 1),
(70, 'P1-008', 'MESA MADERA CUADRADA', 'EN USO', 11, 1),
(71, 'P1-009', 'MESA MADERA CUADRADA', 'EN USO', 11, 1),
(72, 'TB1-001', 'TABLERO MOVIL', 'EN USO', 15, 1),
(73, 'NO', 'EXTINTOR', 'EN USO', 16, 1),
(74, 'NO', 'EXTINTOR', 'EN USO', 16, 1),
(75, 'NO', 'SILLA AZUL', 'EN USO', 16, 1),
(76, 'NO', 'SILLA AZUL', 'EN USO', 16, 1),
(77, 'MC1-003', 'MESA MADERA REDONDA', 'EN USO', 16, 1),
(78, 'NO', 'FLORERO', 'EN USO', 16, 1),
(79, '21030193OR739970370002', 'BUTACO GRIS MADERA', 'EN USO', 16, 1),
(80, '21030193OR739970370010', 'BUTACO GRIS MADERA', 'EN USO', 16, 1),
(81, '21030193OR739970370017', 'BUTACO GRIS MADERA', 'EN USO', 16, 1),
(82, '21030193OR739970370015', 'BUTACO GRIS MADERA', 'EN USO', 16, 1),
(83, 'NO', 'BUTACO GRIS MADERA', 'EN USO', 16, 1),
(84, 'NO', 'BUTACO GRIS MADERA', 'EN USO', 16, 1),
(85, 'NO', 'MADERA CHALLENGER', 'EN USO', 16, 1),
(86, 'NO', 'TELEVISOR SAMUNG', 'EN USO', 16, 1),
(87, 'NO', 'MESA MADERA ENCHUFE', 'EN USO', 16, 1),
(88, 'NO', 'MESA MADERA ENCHUFE', 'EN USO', 16, 1),
(89, '21040114OR742160370009', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(90, '21040114OR742160370001', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(91, '21040114OR742160370011', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(92, '21040114OR742160370003', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(93, '21040114OR742160370010', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(94, '21040114OR742160370008', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(95, '21040114OR742160370002', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(96, '21040114OR742160370004', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(97, '21040114OR742160370007', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(98, 'NO', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(99, '21040114OR742160370005', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(100, '21040114OR742160370012', 'SILLA Q5 NEGRA', 'EN USO', 16, 1),
(101, 'NO', 'SILLA AMARILLA', 'EN USO', 12, 1),
(102, 'NO', 'SILLA AMARILLA', 'EN USO', 12, 1),
(103, 'P1-010', 'MESA MADERA CUADRADA', 'EN USO', 12, 1),
(104, 'P1-011', 'MESA MADERA CUADRADA', 'EN USO', 12, 1),
(105, 'NO', 'SILLON GRIS MADERA', 'EN USO', 12, 1),
(106, 'MC1-004', 'MESA MADERA REDONDA', 'EN USO', 12, 1),
(107, '21030143OR743190370002', 'SILLA GRIS ', 'EN USO', 13, 1),
(108, '21030143OR743190370006', 'SILLA GRIS ', 'EN USO', 13, 1),
(109, '21030143OR743190370007', 'SILLA GRIS ', 'EN USO', 13, 1),
(110, '21030143OR743190370008', 'SILLA GRIS ', 'EN USO', 13, 1),
(111, 'NO', 'MESA REDONDA', 'EN USO', 13, 1),
(112, '21030143OR743190370003', 'SILLA GRIS ', 'EN USO', 14, 1),
(113, '21030143OR743190370001', 'SILLA GRIS ', 'EN USO', 14, 1),
(114, '21030143OR743190370005', 'SILLA GRIS ', 'EN USO', 14, 1),
(115, '21030143OR743190370004', 'SILLA GRIS ', 'EN USO', 14, 1),
(116, 'NO', 'MESA REDONDA', 'EN USO', 14, 1),
(117, 'NO', 'SILLON NEGRO GRANDE', 'EN USO', 17, 1),
(118, '21030143OR735890370003', 'PUFF GRIS', 'EN USO', 17, 1),
(119, 'NO', 'PUFF GRIS', 'EN USO', 17, 1),
(120, 'P1-012', 'MESA MADERA CUADRADA', 'EN USO', 17, 1),
(121, 'MC1-005', 'MESA HEXAGONAL', 'EN USO', 17, 1),
(122, 'NO', 'LAMPARA', 'EN USO', 17, 1),
(123, '21030143OR743380370033', 'SILLA GRIS FAMOC', 'EN USO', 18, 1),
(124, '21030143OR743380370043', 'SILLA GRIS FAMOC', 'EN USO', 18, 1),
(125, '21030143OR743380370021', 'SILLA GRIS FAMOC', 'EN USO', 18, 1),
(126, '21030143OR743380370051', 'SILLA GRIS FAMOC', 'EN USO', 18, 1),
(127, '21030143OR743380370014', 'SILLA GRIS FAMOC', 'EN USO', 18, 1),
(128, '21030143OR743380370053', 'SILLA GRIS FAMOC', 'EN USO', 18, 1),
(129, '21030143OR743380370035', 'SILLA GRIS FAMOC', 'EN USO', 18, 1),
(130, '21030143OR743380370048', 'SILLA GRIS FAMOC', 'EN USO', 18, 1),
(131, '21030143OR743380370003', 'PUFF GRIS FAMOC', 'EN USO', 18, 1),
(132, 'NO', 'PUFF GRIS FAMOC', 'EN USO', 18, 1),
(133, 'NO', 'SILLA AZUL FAMOC', 'EN USO', 18, 1),
(134, '21030143OR743380370002', 'SILLA AZUL FAMOC', 'EN USO', 18, 1),
(135, 'MC5-001', 'MESA MADERA REDONDA', 'EN USO', 18, 1),
(136, 'NO', 'LOCKER 36 ESPACIOS', 'EN USO', 18, 1),
(137, '145043', 'TELEVISOR ONESCREEN', 'EN USO', 18, 1),
(138, '127553', 'MOUSE LENOVO', 'EN USO', 19, 1),
(139, '131501', 'MOUSE LENOVO', 'EN USO', 19, 1),
(140, '107589', 'MOUSE LENOVO', 'EN USO', 19, 1),
(141, '038199', 'MOUSE LENOVO', 'EN USO', 19, 1),
(142, '126812', 'MOUSE LENOVO', 'EN USO', 19, 1),
(143, '126634', 'MOUSE LENOVO', 'EN USO', 19, 1),
(144, '137352', 'MOUSE LENOVO', 'EN USO', 19, 1),
(145, '127542', 'MOUSE LENOVO', 'EN USO', 19, 1),
(146, '127552', 'TECLADO LENOVO', 'EN USO', 19, 1),
(147, '131500', 'TECLADO LENOVO', 'EN USO', 19, 1),
(148, '107590', 'TECLADO LENOVO', 'EN USO', 19, 1),
(149, '038200', 'TECLADO LENOVO', 'EN USO', 19, 1),
(150, '126813', 'TECLADO LENOVO', 'EN USO', 19, 1),
(151, '126635', 'TECLADO LENOVO', 'EN USO', 19, 1),
(152, '137353', 'TECLADO LENOVO', 'EN USO', 19, 1),
(153, '127543', 'TECLADO LENOVO', 'EN USO', 19, 1),
(154, '036309', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(155, '056202', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(156, '056149', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(157, '140751', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(158, '093922', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(159, '036263', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(160, '036313', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(161, '093924', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(162, '141121', 'TORRE LENOVO', 'EN USO', 19, 1),
(163, '089117', 'TORRE LENOVO', 'EN USO', 19, 1),
(164, '025325', 'TORRE LENOVO', 'EN USO', 19, 1),
(165, '141116', 'TORRE LENOVO', 'EN USO', 19, 1),
(166, '033887', 'TORRE LENOVO', 'EN USO', 19, 1),
(167, '033500', 'TORRE LENOVO', 'EN USO', 19, 1),
(168, '032902', 'TORRE LENOVO', 'EN USO', 19, 1),
(169, '141119', 'TORRE LENOVO', 'EN USO', 19, 1),
(170, '21030143OR743380370049', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(171, '21030143OR743380370045', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(172, '21030143OR743380370034', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(173, 'NO', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(174, '21030143OR743380370040', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(175, '21030143OR743380370046', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(176, '21030143OR743380370029', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(177, '21030143OR743380370010', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(178, 'NO', 'SILLA NARANJA CIRCULAR 4 PIEZAS', 'EN USO', 20, 1),
(179, 'NO', 'SILLA COLGANTE ', 'EN USO', 20, 1),
(180, 'NO', 'SILLA COLGANTE ', 'EN USO', 20, 1),
(181, 'NO', 'SILLA COLGANTE ', 'EN USO', 20, 1),
(182, 'NO', 'SILLA COLGANTE ', 'EN USO', 20, 1),
(183, '096992', 'MOUSE LENOVO', 'EN USO', 19, 1),
(184, '119642', 'MOUSE LENOVO', 'EN USO', 19, 1),
(185, '097600', 'MOUSE LENOVO', 'EN USO', 19, 1),
(186, '137365', 'MOUSE LENOVO', 'EN USO', 19, 1),
(187, '127523', 'MOUSE LENOVO', 'EN USO', 19, 1),
(188, '094903', 'MOUSE LENOVO', 'EN USO', 19, 1),
(189, '044184', 'MOUSE LENOVO', 'EN USO', 19, 1),
(190, '137383', 'MOUSE LENOVO', 'EN USO', 19, 1),
(191, '022572', 'TECLADO LENOVO', 'EN USO', 19, 1),
(192, '119643', 'TECLADO LENOVO', 'EN USO', 19, 1),
(193, '097601', 'TECLADO LENOVO', 'EN USO', 19, 1),
(194, '137374', 'TECLADO LENOVO', 'EN USO', 19, 1),
(195, '127522', 'TECLADO LENOVO', 'EN USO', 19, 1),
(196, '094902', 'TECLADO LENOVO', 'EN USO', 19, 1),
(197, '109237', 'TECLADO LENOVO', 'EN USO', 19, 1),
(198, '137382', 'TECLADO LENOVO', 'EN USO', 19, 1),
(199, '140109', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(200, '081820', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(201, '140702', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(202, '140726', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(203, '036275', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(204, '024383', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(205, '140753', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(206, '036339', 'PANTALLA LENOVO', 'EN USO', 19, 1),
(207, '055355', 'TORRE LENOVO', 'EN USO', 19, 1),
(208, '025311', 'TORRE LENOVO', 'EN USO', 19, 1),
(209, '088752', 'TORRE LENOVO', 'EN USO', 19, 1),
(210, '032308', 'TORRE LENOVO', 'EN USO', 19, 1),
(211, '033979', 'TORRE LENOVO', 'EN USO', 19, 1),
(212, '045823', 'TORRE LENOVO', 'EN USO', 19, 1),
(213, '036092', 'TORRE LENOVO', 'EN USO', 19, 1),
(214, '032300', 'TORRE LENOVO', 'EN USO', 19, 1),
(215, '21030143OR743380370047', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(216, '21030143OR743380370032', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(217, '21030143OR743380370025', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(218, '21030143OR743380370081', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(219, '21030143OR743380370005', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(220, 'NO', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(221, '21030143OR743380370002', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(222, '21030143OR743380370052', 'SILLA GRIS FAMOC', 'EN USO', 19, 1),
(223, 'TB5-001', 'TABLERO MOVIL', 'EN USO', 19, 1),
(224, 'PN5-001', 'PANEL MOVIL', 'EN USO', 19, 1),
(225, 'PN5-002', 'PANEL MOVIL', 'EN USO', 19, 1),
(226, 'PN5-003', 'PANEL MOVIL', 'EN USO', 19, 1),
(227, 'PN5-004', 'PANEL MOVIL', 'EN USO', 19, 1),
(228, 'PN5-005', 'PANEL MOVIL', 'EN USO', 19, 1),
(229, 'PN5-006', 'PANEL MOVIL', 'EN USO', 19, 1),
(230, 'PN5-007', 'PANEL MOVIL', 'EN USO', 19, 1),
(231, 'PN5-008', 'PANEL MOVIL', 'EN USO', 19, 1),
(232, 'PN5-009', 'PANEL MOVIL', 'EN USO', 19, 1),
(233, 'PN5-010', 'PANEL MOVIL', 'EN USO', 19, 1),
(234, 'PN5-011', 'PANEL MOVIL', 'EN USO', 19, 1),
(235, 'PN5-012', 'PANEL MOVIL', 'EN USO', 19, 1),
(236, 'PN5-013', 'PANEL MOVIL', 'EN USO', 19, 1),
(237, 'PN5-014', 'PANEL MOVIL', 'EN USO', 19, 1),
(238, 'PN5-015', 'PANEL MOVIL', 'EN USO', 19, 1),
(239, 'PN5-016', 'PANEL MOVIL', 'EN USO', 19, 1),
(240, 'PN5-017', 'PANEL MOVIL', 'EN USO', 19, 1),
(241, 'PN5-018', 'PANEL MOVIL', 'EN USO', 19, 1),
(242, 'PN5-019', 'PANEL MOVIL', 'EN USO', 19, 1),
(243, 'PN5-020', 'PANEL MOVIL', 'EN USO', 19, 1),
(244, 'PN5-021', 'PANEL MOVIL', 'EN USO', 19, 1),
(245, 'PN5-022', 'PANEL MOVIL', 'EN USO', 19, 1),
(246, 'PN5-023', 'PANEL MOVIL', 'EN USO', 19, 1),
(247, 'NO', 'EXTINTOR', 'EN USO', 19, 1),
(248, 'NO', 'TELEVISOR SAMSUNG', 'EN USO', 21, 1),
(249, 'NO', 'EXTINTOR', 'EN USO', 21, 1),
(250, 'NO', 'MESA BLANCA', 'EN USO', 21, 1),
(251, '21030131OR744380370001', 'BUTACO BLANCO', 'EN USO', 21, 1),
(252, '21030143OR722360370001', 'PUFF GRIS', 'EN USO', 21, 1),
(253, '21030143OR722360370002', 'PUFF GRIS', 'EN USO', 21, 1),
(254, 'P5-001', 'MESA MADERA CUADRADA', 'EN USO', 23, 1),
(255, 'P5-002', 'MESA MADERA CUADRADA', 'EN USO', 23, 1),
(256, 'NO', 'SILLA NARANJA 3 PIEZAS', 'EN USO', 21, 1),
(257, 'NO', 'SILLA MADERA INDIVIDUAL', 'EN USO', 22, 1),
(258, 'NO', 'SILLA MADERA INDIVIDUAL', 'EN USO', 22, 1),
(259, 'NO', 'SILLA MADERA INDIVIDUAL', 'EN USO', 22, 1),
(260, 'NO', 'SILLA MADERA INDIVIDUAL', 'EN USO', 22, 1),
(261, 'NO', 'SILLA MADERA INDIVIDUAL', 'EN USO', 22, 1),
(262, 'NO', 'SILLA MADERA INDIVIDUAL', 'EN USO', 22, 1),
(263, 'NO', 'SILLA MADERA LARGA', 'EN USO', 22, 1),
(264, 'NO', 'MESA MADERA GRANDE', 'EN USO', 22, 1),
(265, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(266, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(267, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(268, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(269, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(270, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(271, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(272, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(273, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(274, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(275, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(276, 'NO', 'MATERAS GRANDES', 'EN USO', 22, 1),
(277, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(278, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(279, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(280, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(281, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(282, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(283, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(284, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(285, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(286, 'NO', 'MATERAS MEDIANAS', 'EN USO', 22, 1),
(287, 'NO', 'MATERAS PEQUEÑAS', 'EN USO', 22, 1),
(288, 'TB5-002', 'TABLERO MOVIL', 'EN USO', 22, 1),
(289, 'NO', 'TELEVISOR SAMSUNG', 'EN USO', 22, 1),
(290, 'NO', 'PARLANTE EV', 'EN USO', 22, 1),
(291, 'NO', 'PARLANTE EV', 'EN USO', 22, 1),
(292, 'NO', 'SILLA VINOTINTO', 'EN USO', 22, 1),
(293, 'NO', 'SILLA VINOTINTO', 'EN USO', 22, 1),
(294, 'NO', 'SILLA VINOTINTO', 'EN USO', 22, 1),
(295, 'NO', 'SILLA VINOTINTO', 'EN USO', 22, 1),
(296, 'NO', 'SILLA VINOTINTO', 'EN USO', 22, 1),
(297, 'NO', 'SILLA VINOTINTO', 'EN USO', 22, 1),
(298, 'NO', 'SILLA VINOTINTO', 'EN USO', 22, 1),
(299, 'NO', 'SILLA VINOTINTO', 'EN USO', 22, 1),
(300, 'NO', 'SILLA MULTICOLOR', 'EN USO', 22, 1),
(301, 'NO', 'SILLA MULTICOLOR', 'EN USO', 22, 1),
(302, 'NO', 'SILLA MULTICOLOR', 'EN USO', 22, 1),
(303, 'NO', 'SILLA MULTICOLOR', 'EN USO', 22, 1),
(304, 'NO', 'SILLA Q5', 'EN USO', 23, 1),
(305, '21030143OR743040370010', 'SILLA Q5', 'EN USO', 23, 1),
(306, '21030143OR743040370030', 'SILLA Q5', 'EN USO', 23, 1),
(307, '21030143OR743040370001', 'SILLA Q5', 'EN USO', 23, 1),
(308, 'NO', 'SILLA Q5', 'EN USO', 23, 1),
(309, '21030143OR743040370007', 'SILLA Q5', 'EN USO', 23, 1),
(310, '21030143OR743040370006', 'SILLA Q5', 'EN USO', 23, 1),
(311, '21030143OR743040370004', 'SILLA Q5', 'EN USO', 23, 1),
(312, '21030143OR743040370018', 'SILLA Q5', 'EN USO', 23, 1),
(313, '21030143OR743040370023', 'SILLA Q5', 'EN USO', 23, 1),
(314, '21030143OR743040370017', 'SILLA Q5', 'EN USO', 23, 1),
(315, 'NO', 'SILLA Q5', 'EN USO', 23, 1),
(316, '21030143OR743040370031', 'SILLA Q5', 'EN USO', 23, 1),
(317, '21030143OR743040370020', 'SILLA Q5', 'EN USO', 23, 1),
(318, '21030143OR743040370024', 'SILLA Q5', 'EN USO', 23, 1),
(319, '21030143OR743040370002', 'SILLA Q5', 'EN USO', 23, 1),
(320, '21030143OR743040370029', 'SILLA Q5', 'EN USO', 23, 1),
(321, '21030143OR743040370038', 'SILLA Q5', 'EN USO', 23, 1),
(322, '21030143OR743040370005', 'SILLA Q5', 'EN USO', 23, 1),
(323, '21030143OR743040370014', 'SILLA Q5', 'EN USO', 23, 1),
(324, '145047', 'TELEVISOR ONE SCREEN', 'EN USO', 23, 1),
(325, '145044', 'TELEVISOR ONE SCREEN', 'EN USO', 23, 1),
(326, 'NO', 'GABINETE MADERA ', 'EN USO', 23, 1),
(327, 'NO', 'GABINETE MADERA ', 'EN USO', 23, 1),
(328, 'NO', 'GABINETE MADERA ', 'EN USO', 23, 1),
(329, 'NO', 'GABINETE MADERA ', 'EN USO', 23, 1),
(330, 'NO', 'GABINETE MADERA ', 'EN USO', 23, 1),
(331, 'NO', 'PUNTO DE IMPRESIÓN', 'EN USO', 23, 1),
(332, 'TB5-003', 'TABLERO MOVIL', 'EN USO', 23, 1),
(333, 'NO', 'EXTINTOR', 'EN USO', 23, 1),
(334, 'NO', 'PARLANTE', 'EN USO', 23, 1),
(335, 'MW5-001', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(336, 'MW5-002', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(337, 'MW5-003', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(338, 'MW5-004', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(339, 'MW5-005', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(340, 'MW5-006', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(341, 'MW5-007', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(342, 'MW5-008', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(343, 'MW5-009', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(344, 'MW5-010', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(345, 'MW5-011', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(346, 'MW5-012', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(347, 'MW5-013', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(348, 'MW5-014', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(349, 'MW5-015', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(350, 'MW5-016', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(351, 'MW5-017', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(352, 'MW5-018', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(353, 'MW5-019', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(354, 'MW5-020', 'MESA BLANCA RECTANGULAR', 'EN USO', 23, 1),
(355, 'NO', 'SILLA BEIGE', 'EN USO', 23, 1),
(356, 'NO', 'TICKET', 'EN USO', 24, 1),
(357, 'MC13-001', 'MESA MADERA REDONDA', 'EN USO', 24, 1),
(358, '21030131OR744390370002', 'SILLA  GIRATORIA GRIS', 'EN USO', 24, 1),
(359, '21030131OR744390370001', 'SILLA  GIRATORIA GRIS', 'EN USO', 24, 1),
(360, '21030131OR744260370001', 'SILLA AZUL FAMOC', 'EN USO', 24, 1),
(361, '21030131OR744260370003', 'SILLA AZUL FAMOC', 'EN USO', 24, 1),
(362, '21030131OR744260370008', 'SILLA AZUL FAMOC', 'EN USO', 24, 1),
(363, '21030131OR744260370004', 'SILLA AZUL FAMOC', 'EN USO', 24, 1),
(364, 'NO', 'EXTINTOR', 'EN USO', 24, 1),
(365, '21030143OR743380370080', 'SILLA GRIS FAMOC', 'EN USO', 24, 1),
(366, '21030143OR743380370068', 'SILLA GRIS FAMOC', 'EN USO', 24, 1),
(367, '21030143OR743380370050', 'SILLA GRIS FAMOC', 'EN USO', 24, 1),
(368, '21030143OR743380370011', 'SILLA GRIS FAMOC', 'EN USO', 24, 1),
(369, '21030143OR743380370059', 'SILLA GRIS FAMOC', 'EN USO', 24, 1),
(370, '046186', 'TORRE LENOVO', 'EN USO', 24, 1),
(371, '049328', 'TORRE LENOVO', 'EN USO', 24, 1),
(372, '054950', 'TORRE LENOVO', 'EN USO', 24, 1),
(373, '025057', 'TORRE LENOVO', 'EN USO', 24, 1),
(374, '033820', 'TORRE LENOVO', 'EN USO', 24, 1),
(375, '024387', 'PANTALLA LENOVO', 'EN USO', 24, 1),
(376, '036403', 'PANTALLA LENOVO', 'EN USO', 24, 1),
(377, '140706', 'PANTALLA LENOVO', 'EN USO', 24, 1),
(378, '036231', 'PANTALLA LENOVO', 'EN USO', 24, 1),
(379, '036163', 'PANTALLA LENOVO', 'EN USO', 24, 1),
(380, '096453', 'TECLADO LENOVO', 'EN USO', 24, 1),
(381, '094620', 'TECLADO LENOVO', 'EN USO', 24, 1),
(382, '096976', 'TECLADO LENOVO', 'EN USO', 24, 1),
(383, '137346', 'TECLADO LENOVO', 'EN USO', 24, 1),
(384, '133062', 'TECLADO LENOVO', 'EN USO', 24, 1),
(385, '097973', 'MOUSE LENOVO', 'EN USO', 24, 1),
(386, '096452', 'MOUSE LENOVO', 'EN USO', 24, 1),
(387, '096977', 'MOUSE LENOVO', 'EN USO', 24, 1),
(388, '137347', 'MOUSE LENOVO', 'EN USO', 24, 1),
(389, '126977', 'MOUSE LENOVO', 'EN USO', 24, 1),
(390, '21030143OR743040370026', 'SILLA QR AZUL', 'EN USO', 25, 1),
(391, '21030143OR743040370034', 'SILLA QR AZUL', 'EN USO', 25, 1),
(392, '21030143OR743040370035', 'SILLA QR AZUL', 'EN USO', 25, 1),
(393, '21030143OR743040370033', 'SILLA QR AZUL', 'EN USO', 25, 1),
(394, '21030143OR743040370032', 'SILLA QR AZUL', 'EN USO', 25, 1),
(395, '21030143OR743040370036', 'SILLA QR AZUL', 'EN USO', 25, 1),
(396, 'MT13-001', 'MESA BLANCA TRIANGULAR', 'EN USO', 25, 1),
(397, 'MT13-002', 'MESA BLANCA TRIANGULAR', 'EN USO', 25, 1),
(398, 'MT13-003', 'MESA BLANCA TRIANGULAR', 'EN USO', 25, 1),
(399, 'NO', 'TELEVISOR', 'EN USO', 25, 1),
(400, 'NO', 'TELEVISOR', 'EN USO', 25, 1),
(401, 'NO', 'TELEVISOR', 'EN USO', 25, 1),
(402, 'NO', 'TELEVISOR', 'EN USO', 25, 1),
(403, 'P13-001', 'MESA MADERA CUADRADA', 'EN USO', 25, 1),
(404, 'NO', 'TELEVISOR SAMSUNG', 'EN USO', 25, 1),
(405, '145152', 'TELEFONO UNIFY', 'EN USO', 25, 1),
(406, '145151', 'TELEFONO UNIFY', 'EN USO', 25, 1),
(407, '145154', 'TELEFONO DOBLE UNIFY', 'EN USO', 25, 1),
(408, '145153', 'TELEFONO DOBLE UNIFY', 'EN USO', 25, 1),
(409, '20093190', 'TELEFONO', 'EN USO', 25, 1),
(410, '20094119', 'TELEFONO', 'DAÑADO', 25, 1),
(411, '20095159', 'TELEFONO', 'EN USO', 25, 1),
(412, '20095197', 'TELEFONO', 'EN USO', 25, 1),
(413, '036301', 'PANTALLA LENOVO', 'EN USO', 25, 1),
(414, '073707', 'PANTALLA LENOVO', 'EN USO', 25, 1),
(415, '036199', 'PANTALLA LENOVO', 'EN USO', 25, 1),
(416, '140714', 'PANTALLA LENOVO', 'EN USO', 25, 1),
(417, '049331', 'TORRE LENOVO', 'EN USO', 25, 1),
(418, '033075', 'TORRE LENOVO', 'EN USO', 25, 1),
(419, '032881', 'TORRE LENOVO', 'EN USO', 25, 1),
(420, '033105', 'TORRE LENOVO', 'EN USO', 25, 1),
(421, '096996', 'TECLADO LENOVO', 'EN USO', 25, 1),
(422, '134306', 'TECLADO LENOVO', 'EN USO', 25, 1),
(423, '024989', 'TECLADO LENOVO', 'EN USO', 25, 1),
(424, '134311', 'TECLADO LENOVO', 'EN USO', 25, 1),
(425, '096997', 'MOUSE LENOVO', 'EN USO', 25, 1),
(426, '134305', 'MOUSE LENOVO', 'EN USO', 25, 1),
(427, '128569', 'MOUSE LENOVO', 'EN USO', 25, 1),
(428, '134312', 'MOUSE LENOVO', 'EN USO', 25, 1),
(429, '21030143OR743380370008', 'SILLA GRIS FAMOC', 'EN USO', 25, 1),
(430, '21030143OR743380370044', 'SILLA GRIS FAMOC', 'EN USO', 25, 1),
(431, '21030143OR743380370060', 'SILLA GRIS FAMOC', 'EN USO', 25, 1),
(432, '21030143OR743380370036', 'SILLA GRIS FAMOC', 'EN USO', 25, 1),
(433, '21030143OR743380370084', 'SILLA GRIS FAMOC', 'EN USO', 25, 1),
(434, '21030143OR743380370078', 'SILLA GRIS FAMOC', 'EN USO', 25, 1),
(435, '20095097', 'TELEFONO MICROFONO', 'EN USO', 26, 1),
(436, '20095189', 'TELEFONO MICROFONO', 'EN USO', 26, 1),
(437, '20095195', 'TELEFONO MICROFONO', 'EN USO', 26, 1),
(438, '20095074', 'TELEFONO MICROFONO', 'EN USO', 26, 1),
(439, '20095235', 'TELEFONO MICROFONO', 'EN USO', 26, 1),
(440, '20095095', 'TELEFONO MICROFONO', 'EN USO', 26, 1),
(441, 'O71262', 'TORRE LENOVO', 'EN USO', 26, 1),
(442, 'O88576', 'TORRE LENOVO', 'EN USO', 26, 1),
(443, 'O69108', 'TORRE LENOVO', 'EN USO', 26, 1),
(444, 'O88977', 'TORRE LENOVO', 'EN USO', 26, 1),
(445, '141468', 'TORRE LENOVO', 'EN USO', 26, 1),
(446, '141147', 'TORRE LENOVO', 'EN USO', 26, 1),
(447, '140733', 'PANTALLA LENOVO', 'EN USO', 26, 1),
(448, 'O25505', 'PANTALLA LENOVO', 'EN USO', 26, 1),
(449, 'O36197', 'PANTALLA LENOVO', 'EN USO', 26, 1),
(450, 'O36425', 'PANTALLA LENOVO', 'EN USO', 26, 1),
(451, '140732', 'PANTALLA LENOVO', 'EN USO', 26, 1),
(452, '36267', 'PANTALLA LENOVO', 'EN USO', 26, 1),
(453, '124751', 'TECLADO LENOVO', 'EN USO', 26, 1),
(454, '133200', 'TECLADO LENOVO', 'EN USO', 26, 1),
(455, '128554', 'TECLADO LENOVO', 'EN USO', 26, 1),
(456, '133476', 'TECLADO LENOVO', 'EN USO', 26, 1),
(457, '119673', 'TECLADO LENOVO', 'EN USO', 26, 1),
(458, 'O44195', 'TECLADO LENOVO', 'EN USO', 26, 1),
(459, '124750', 'MOUSE LENOVO', 'EN USO', 26, 1),
(460, '126818', 'MOUSE LENOVO', 'EN USO', 26, 1),
(461, '128553', 'MOUSE LENOVO', 'EN USO', 26, 1),
(462, '133747', 'MOUSE LENOVO', 'EN USO', 26, 1),
(463, '119672', 'MOUSE LENOVO', 'EN USO', 26, 1),
(464, '129277', 'MOUSE LENOVO', 'EN USO', 26, 1),
(465, '21030143OR743380370042', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(466, '21030143OR743380370061', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(467, 'NO', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(468, '21030143OR743380370022', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(469, '21030143OR743380370071', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(470, '21030143OR743380370064', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(471, '21030143OR743380370057', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(472, '21030143OR743380370041', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(473, '21030143OR743380370063', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(474, '21030143OR743380370089', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(475, '21030143OR743380370026', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(476, '21030143OR743380370054', 'SILLA GRIS FAMOC', 'EN USO', 26, 1),
(477, 'P13-002', 'MESA MADERA CUADRADA', 'EN USO', 27, 1),
(478, 'NO', 'EXTINTOR', 'EN USO', 27, 1),
(479, '21030143OR743380370003', 'SILLA GRIS FAMOC', 'EN USO', 27, 1),
(480, '21030143OR743380370066', 'SILLA GRIS FAMOC', 'EN USO', 27, 1),
(481, '21030143OR743380370070', 'SILLA GRIS FAMOC', 'EN USO', 27, 1),
(482, '21030143OR743380370023', 'SILLA GRIS FAMOC', 'EN USO', 27, 1),
(483, '21030143OR743380370019', 'SILLA GRIS FAMOC', 'EN USO', 27, 1),
(484, '21030143OR743380370027', 'SILLA GRIS FAMOC', 'EN USO', 27, 1),
(485, 'NO', 'EXTINTOR', 'EN USO', 28, 1),
(486, 'NO', 'MUEBLE DE IMPRESIÓN', 'EN USO', 28, 1),
(487, '21030143OR743380370086', 'SILLA GRIS FAMOC', 'EN USO', 28, 1),
(488, '21030143OR743380370075', 'SILLA GRIS FAMOC', 'EN USO', 28, 1),
(489, '21030143OR743380370056', 'SILLA GRIS FAMOC', 'EN USO', 28, 1),
(490, '21030143OR743380370083', 'SILLA GRIS FAMOC', 'EN USO', 28, 1),
(491, '21030143OR743380370001', 'SILLA GRIS FAMOC', 'EN USO', 28, 1),
(492, '21030143OR743380370018', 'SILLA GRIS FAMOC', 'EN USO', 28, 1),
(493, '21030143OR743380370024', 'SILLA GRIS FAMOC', 'EN USO', 28, 1),
(494, '21030143OR743380370020', 'SILLA GRIS FAMOC', 'EN USO', 28, 1),
(495, 'NO', 'SILLON CIRCULAR NARANJA', 'EN USO', 29, 1),
(496, 'NO', 'LOCKER 24 CAJAS', 'EN USO', 29, 1),
(497, 'NO', 'TELEVISOR', 'EN USO', 29, 1),
(498, '145067', 'TELEVISOR', 'EN USO', 29, 1),
(499, 'NO', 'EXTINTOR', 'EN USO', 29, 1),
(500, 'MC13-002', 'MESA MADERA REDONDA', 'EN USO', 29, 1),
(501, 'NO', 'MESA CUADRADA', 'EN USO', 29, 1),
(502, 'NO', 'PUFF GRIS', 'EN USO', 29, 1),
(503, '21030143OR735890370004', 'PUFF GRIS', 'EN USO', 29, 1),
(504, 'NO', 'SILLA AZUL FAMOC', 'EN USO', 29, 1),
(505, '21030131OR74436037003', 'SILLA AZUL FAMOC', 'EN USO', 29, 1),
(506, 'MC13-003', 'MESA MADERA REDONDA', 'EN USO', 29, 1),
(507, 'NO', 'MESA CUADRADA', 'EN USO', 29, 1),
(508, 'NO', 'PUFF GRIS', 'EN USO', 29, 1),
(509, '21030143OR740010370008', 'PUFF GRIS', 'EN USO', 29, 1),
(510, 'TB13-001', 'TABLERO MOVIL', 'EN USO', 29, 1),
(511, '21030143', 'SILLA AZUL FAMOC', 'EN USO', 29, 1),
(512, '21030143', 'SILLA AZUL FAMOC', 'EN USO', 29, 1),
(513, '21030143OR743380370006', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(514, '21030143OR743380370009', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(515, '21030143OR743380370039', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(516, '21030143OR743380370007', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(517, '21030143OR743380370004', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(518, '21030143OR743380370076', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(519, '21030143OR743380370015', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(520, '21030143OR743380370074', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(521, '21030143OR743380370037', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(522, '21030143OR743380370069', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(523, '21030143OR743380370030', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(524, '21030143OR743380370038', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(525, '21030143OR743380370028', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(526, '21030143OR743380370073', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(527, '21030143OR743380370085', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(528, '21030143OR743380370058', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(529, '21030143OR743380370013', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(530, '21030143OR743380370093', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(531, '21030143OR743380370031', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(532, '21030143OR743380370055', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(533, '21030143OR743380370016', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(534, '21030143OR743380370065', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(535, '21030143OR743380300067', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(536, '21030143OR743380370012', 'SILLA GRIS FAMOC', 'EN USO', 29, 1),
(537, 'NO', 'EXTINTOR', 'EN USO', 30, 1),
(538, '21030143', 'SILLA AZUL FAMOC', 'EN USO', 30, 1),
(539, '21030143', 'SILLA AZUL FAMOC', 'EN USO', 30, 1),
(540, '21030131OR744360370005', 'SILLA AZUL FAMOC', 'EN USO', 30, 1),
(541, '21030131OR744360370002', 'SILLA AZUL FAMOC', 'EN USO', 30, 1),
(542, '21030131OR744360370004', 'SILLA AZUL FAMOC', 'EN USO', 30, 1),
(543, '21030131OR744360370006', 'SILLA AZUL FAMOC', 'EN USO', 30, 1),
(544, 'TB13-002', 'TABLERO MOVIL', 'EN USO', 30, 1),
(545, 'P13-003', 'MESA MADERA CUADRADA', 'EN USO', 30, 1),
(546, 'P13-004', 'MESA MADERA CUADRADA', 'EN USO', 30, 1),
(547, 'P13-005', 'MESA MADERA CUADRADA', 'EN USO', 30, 1),
(548, 'P13-006', 'MESA MADERA CUADRADA', 'EN USO', 30, 1),
(549, 'P13-007', 'MESA MADERA CUADRADA', 'EN USO', 30, 1),
(550, 'P13-008', 'MESA MADERA CUADRADA', 'EN USO', 30, 1),
(551, 'NO', 'TELEVISOR SAMSUNG', 'EN USO', 30, 1),
(552, '145042', 'TELEVISOR SAMSUNG MOVIL', 'EN USO', 30, 1),
(553, 'NO', 'SILLA GRIS FAMOC', 'EN USO', 30, 1),
(554, ' NO', 'SILLA GRIS FAMOC', 'EN USO', 30, 1),
(555, '21030143OR743380370072', 'SILLA GRIS FAMOC', 'EN USO', 30, 1),
(556, '21030143OR743380370017', 'SILLA GRIS FAMOC', 'EN USO', 30, 1),
(557, '21030143OR743380370079', 'SILLA GRIS FAMOC', 'EN USO', 30, 1),
(558, '21030143OR743380370082', 'SILLA GRIS FAMOC', 'EN USO', 30, 1),
(559, '21030143OR7433980370077', 'SILLA GRIS FAMOC', 'EN USO', 30, 1),
(560, '21030143OR744360370003', 'SILLA GRIS FAMOC', 'EN USO', 30, 1),
(561, '21030143OR743380370062', 'SILLA GRIS FAMOC', 'EN USO', 30, 1),
(562, 'MC13-004', 'MESA MADERA REDONDA', 'EN USO', 30, 1),
(563, 'MC13-005', 'MESA MADERA REDONDA', 'EN USO', 30, 1),
(564, 'MC13-006', 'MESA MADERA REDONDA', 'EN USO', 30, 1),
(565, 'NO', 'PUFF GRIS', 'EN USO', 30, 1),
(566, '21030143OR74001037000?', 'PUFF GRIS', 'EN USO', 30, 1),
(567, '21030143OR740010370001', 'PUFF GRIS', 'EN USO', 30, 1),
(568, '21030143OR740010370006', 'PUFF GRIS', 'EN USO', 30, 1),
(569, 'O36371', 'PANTALLA LENOVO', 'EN USO', 30, 1),
(570, 'O36439', 'PANTALLA LENOVO', 'EN USO', 30, 1),
(571, '140250', 'PANTALLA LENOVO', 'EN USO', 30, 1),
(572, 'O36453', 'PANTALLA LENOVO', 'EN USO', 30, 1),
(573, 'O53702', 'PANTALLA LENOVO', 'EN USO', 30, 1),
(574, '140731', 'PANTALLA LENOVO', 'EN USO', 30, 1),
(575, 'O36209', 'PANTALLA LENOVO', 'EN USO', 30, 1),
(576, 'O25429', 'PANTALLA LENOVO', 'EN USO', 30, 1),
(577, 'O36227', 'PANTALLA LENOVO', 'EN USO', 30, 1),
(578, 'O88195', 'TORRE LENOVO', 'EN USO', 30, 1),
(579, 'O88534', 'TORRE LENOVO', 'EN USO', 30, 1),
(580, 'O25043', 'TORRE LENOVO', 'EN USO', 30, 1),
(581, 'O69586', 'TORRE LENOVO', 'EN USO', 30, 1),
(582, 'O69490', 'TORRE LENOVO', 'EN USO', 30, 1),
(583, 'O33137', 'TORRE LENOVO', 'EN USO', 30, 1),
(584, 'O89144', 'TORRE LENOVO', 'EN USO', 30, 1),
(585, 'O32887', 'TORRE LENOVO', 'EN USO', 30, 1),
(586, 'O32286', 'TORRE LENOVO', 'EN USO', 30, 1),
(587, '127538', 'TECLADO LENOVO', 'EN USO', 30, 1),
(588, '132955', 'TECLADO LENOVO', 'EN USO', 30, 1),
(589, '133402', 'TECLADO LENOVO', 'EN USO', 30, 1),
(590, '129033', 'TECLADO LENOVO', 'EN USO', 30, 1),
(591, '126928', 'TECLADO LENOVO', 'EN USO', 30, 1),
(592, '131401', 'TECLADO LENOVO', 'EN USO', 30, 1),
(593, '109224', 'TECLADO LENOVO', 'EN USO', 30, 1),
(594, 'O41093', 'TECLADO LENOVO', 'EN USO', 30, 1),
(595, 'NO', 'TECLADO LENOVO', 'EN USO', 30, 1),
(596, 'O94156', 'MOUSE LENOVO', 'EN USO', 30, 1),
(597, 'O44188', 'MOUSE LENOVO', 'EN USO', 30, 1),
(598, '131400', 'MOUSE LENOVO', 'EN USO', 30, 1),
(599, '126929', 'MOUSE LENOVO', 'EN USO', 30, 1),
(600, 'COLTEL-127537', 'MOUSE LENOVO', 'EN USO', 30, 1),
(601, 'COLTEL-132954', 'MOUSE LENOVO', 'EN USO', 30, 1),
(602, 'COLTEL-137336', 'MOUSE LENOVO', 'EN USO', 30, 1),
(603, 'COLTEL-133403', 'MOUSE LENOVO', 'EN USO', 30, 1),
(604, 'COLTEL-096487', 'MOUSE LENOVO', 'EN USO', 30, 1),
(605, 'TB13-003', 'TABLERO MOVIL', 'EN USO', 28, 1),
(608, 'NO', 'Televisor', 'EN USO', 15, 1),
(609, 'NO', 'Silla Blur c', 'EN USO', 15, 1),
(610, 'NO', 'Silla Blur c', 'EN USO', 15, 1),
(611, 'NO', 'Silla Blur c', 'EN USO', 15, 1),
(612, 'NO', 'Silla Blur c', 'EN USO', 15, 1),
(613, 'NO', 'Silla Blur c', 'EN USO', 15, 1),
(614, 'NO', 'Silla Blur c', 'EN USO', 15, 1),
(615, 'NO', 'Silla Blur c', 'EN USO', 15, 1),
(616, '210301310R741960370007', 'Silla Blur c', 'EN USO', 15, 1),
(617, 'NO', 'Parlante', 'EN USO', 15, 1),
(618, 'NO', 'Tablet', 'EN USO', 15, 1),
(12345, '23124124', 'SILLA GOA', 'DISPONIBLE', 23, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedad`
--

CREATE TABLE `novedad` (
  `idNovedad` int(11) NOT NULL,
  `FK_usuario` int(11) NOT NULL,
  `FK_equipo` int(11) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `imagen` longblob DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `novedad`
--

INSERT INTO `novedad` (`idNovedad`, `FK_usuario`, `FK_equipo`, `tipo`, `descripcion`, `imagen`, `fecha`, `activo`) VALUES
(1, 1, 410, 'Daño', 'Al ingresar a la sala la agarradera estaba rota', NULL, '2021-11-30 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(11) NOT NULL,
  `FK_ambiente` int(11) NOT NULL,
  `FK_solicitante` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `horaInicio` varchar(5) NOT NULL,
  `horaFin` varchar(5) NOT NULL,
  `asistentes` int(11) NOT NULL,
  `uso` varchar(130) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `rol` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Solicitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencia`
--

CREATE TABLE `sugerencia` (
  `idSugerencia` int(11) NOT NULL,
  `FK_usuario` int(11) NOT NULL,
  `sugerencia` varchar(500) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `tipoDocumento` varchar(50) NOT NULL,
  `numeroDocumento` varchar(25) NOT NULL,
  `primerNombre` varchar(12) NOT NULL,
  `segundoNombre` varchar(12) DEFAULT NULL,
  `primerApellido` varchar(12) NOT NULL,
  `segundoApellido` varchar(12) DEFAULT NULL,
  `contraseña` varchar(40) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `FK_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `tipoDocumento`, `numeroDocumento`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `contraseña`, `correo`, `telefono`, `activo`, `FK_rol`) VALUES
(1, 'CC', '51630125', 'Esperanza', NULL, 'Quintero', 'Cortes', 'Qle#sVf5nm', 'equinteroc@sena.edu.com', '3174303103', 1, 1),
(2, 'CC', '1023966206', 'Nixon', 'Giovanny', 'Pardo', 'Tellez', 'Nixter98', 'nixtellez98@gmail.com', '3144281965', 1, 1),
(3, 'CC', '100001', 'Anonimo', 'Anonimo', 'Anonimo', 'Anonimo', '5p#sN^yzFkirYc*i', 'notiene@correo.com', '1111', 1, 2),
(4, 'CEDULA', '1000831538', 'JONATHAN', 'DAVID', 'GANTIVA', 'GARZON', '1234321', 'radamantizdavid@gmail.com', '3142048530', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambiente`
--
ALTER TABLE `ambiente`
  ADD PRIMARY KEY (`idAmbiente`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`idEquipo`),
  ADD KEY `FK_ambiente` (`FK_ambiente`);

--
-- Indices de la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD PRIMARY KEY (`idNovedad`),
  ADD KEY `FK_equipo` (`FK_equipo`),
  ADD KEY `FK_usuario` (`FK_usuario`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `FK_ambiente` (`FK_ambiente`),
  ADD KEY `FK_solicitante` (`FK_solicitante`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `sugerencia`
--
ALTER TABLE `sugerencia`
  ADD PRIMARY KEY (`idSugerencia`),
  ADD KEY `FK_usuario` (`FK_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `FK_rol` (`FK_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambiente`
--
ALTER TABLE `ambiente`
  MODIFY `idAmbiente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `idEquipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12346;

--
-- AUTO_INCREMENT de la tabla `novedad`
--
ALTER TABLE `novedad`
  MODIFY `idNovedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sugerencia`
--
ALTER TABLE `sugerencia`
  MODIFY `idSugerencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`FK_ambiente`) REFERENCES `ambiente` (`idAmbiente`);

--
-- Filtros para la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD CONSTRAINT `novedad_ibfk_1` FOREIGN KEY (`FK_equipo`) REFERENCES `equipo` (`idEquipo`),
  ADD CONSTRAINT `novedad_ibfk_2` FOREIGN KEY (`FK_usuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`FK_ambiente`) REFERENCES `ambiente` (`idAmbiente`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`FK_solicitante`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `sugerencia`
--
ALTER TABLE `sugerencia`
  ADD CONSTRAINT `sugerencia_ibfk_1` FOREIGN KEY (`FK_usuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`FK_rol`) REFERENCES `rol` (`idRol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
