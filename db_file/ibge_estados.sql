-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3312
-- Tempo de geração: 12-Abr-2022 às 16:06
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ibge`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `ibge` text COLLATE utf8_unicode_ci NOT NULL,
  `estado` text COLLATE utf8_unicode_ci NOT NULL,
  `uf` text COLLATE utf8_unicode_ci NOT NULL,
  `regiao` text COLLATE utf8_unicode_ci NOT NULL,
  `quantidade` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ibge_estados`
--

INSERT INTO `estados` (`id`, `ibge`, `estado`, `uf`, `regiao`, `quantidade`) VALUES
(1, '11', 'Rondônia', 'RO', 'Região Norte', '52'),
(2, '12', 'Acre', 'AC', 'Região Norte', '22'),
(3, '13', 'Amazonas', 'AM', 'Região Norte', '62'),
(4, '14', 'Roraima', 'RR', 'Região Norte', '15'),
(5, '15', 'Pará', 'PA', 'Região Norte', '144'),
(6, '16', 'Amapá', 'AP', 'Região Norte', '16'),
(7, '17', 'Tocantins', 'TO', 'Região Norte', '139'),
(8, '21', 'Maranhão', 'MA', 'Região Nordeste', '217'),
(9, '22', 'Piauí', 'PI', 'Região Nordeste', '224'),
(10, '23', 'Ceará', 'CE', 'Região Nordeste', '184'),
(11, '24', 'Rio Grande do Norte', 'RN', 'Região Nordeste', '167'),
(12, '25', 'Paraíba', 'PB', 'Região Nordeste', '223'),
(13, '26', 'Pernambuco', 'PE', 'Região Nordeste', '185'),
(14, '27', 'Alagoas', 'AL', 'Região Nordeste', '102'),
(15, '28', 'Sergipe', 'SE', 'Região Nordeste', '75'),
(16, '29', 'Bahia', 'BA', 'Região Nordeste', '417'),
(17, '31', 'Minas Gerais', 'MG', 'Região Sudeste', '853'),
(18, '32', 'Espírito Santo', 'ES', 'Região Sudeste', '78'),
(19, '33', 'Rio de Janeiro', 'RJ', 'Região Sudeste', '92'),
(20, '35', 'São Paulo', 'SP', 'Região Sudeste', '645'),
(21, '41', 'Paraná', 'PR', 'Região Sul', '399'),
(22, '42', 'Santa Catarina', 'SC', 'Região Sul', '295'),
(23, '43', 'Rio Grande do Sul', 'RS', 'Região Sul', '497'),
(24, '50', 'Mato Grosso do Sul', 'MS', 'Região Centro-Oeste', '79'),
(25, '51', 'Mato Grosso', 'MT', 'Região Centro-Oeste', '141'),
(26, '52', 'Goiás', 'GO', 'Região Centro-Oeste', '246'),
(27, '53', 'Distrito Federal', 'DF', 'Região Centro-Oeste', '1');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
