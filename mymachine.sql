-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Out-2020 às 13:45
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mymachine`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID` int(10) NOT NULL,
  `Categoria` varchar(30) NOT NULL,
  `Fabricante` varchar(45) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Valor` decimal(20,2) NOT NULL,
  `Quantidade` int(10) NOT NULL,
  `Imagem` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`ID`, `Categoria`, `Fabricante`, `Nome`, `Valor`, `Quantidade`, `Imagem`) VALUES
(1, 'Teclado', 'Razer', 'Tarantula', '339.00', 23, 'TecladoRazerTarantula.png'),
(2, 'Mouse', 'Logitech', 'G5 Refresh', '129.00', 45, 'MouseLogitechG5Refresh.png'),
(3, 'Teclado', 'Logitech', 'Wave', '189.00', 18, 'KitLogitechWave.png'),
(4, 'Mouse', 'Logitech', 'V470', '216.00', 28, 'MouseLogitechV470.png'),
(5, 'Teclado', 'Logitech', 'G15', '116.00', 8, 'TecladoLogitechG15.png'),
(6, 'Teclado', 'Razer', 'Lycosa', '229.00', 9, 'TecladoRazerLycosa.png'),
(7, 'Mouse', 'Logitech', 'G5 Silver Edition', '215.00', 29, 'MouseLogitechG5SilverEdition.png'),
(8, 'Mouse', 'Logitech', 'G5 BF Edition', '250.00', 75, 'MouseLogitechG5BFEdition.png'),
(9, 'Mouse', 'Logitech', 'G7', '287.00', 96, 'MouseLogitechG7.png'),
(10, 'Mouse', 'Logitech', 'G7 Corrdless', '236.00', 7, 'MouseLogitechG7Corrdless.png'),
(11, 'Mouse', 'Logitech', 'MX510', '150.00', 12, 'MouseLogitechMX510.png'),
(12, 'Mouse', 'Logitech', 'MX Revolution', '220.00', 9, 'MouseLogitechMXRevolution.png'),
(13, 'Mouse', 'Microsoft', 'Habu', '268.00', 42, 'MouseMicrosoftHabu.png'),
(14, 'Teclado', 'Microsoft', 'Reclusa Gaming', '126.00', 30, 'TecladoMicrosoftReclusaGaming.png'),
(15, 'Mouse', 'Razer', 'Diamond Back Magma', '263.00', 23, 'MouseRazerDiamondbackMagma.png'),
(16, 'Mouse', 'Razer', 'Diamond Back Plasma', '324.00', 87, 'MouseRazerDiamondbackPlasma.png'),
(17, 'Mouse', 'Razer', 'Pro Gamer Krait', '298.00', 21, 'MouseRazerProGamerKRAIT.png'),
(18, 'Headset', 'Sennheiser', 'Pro 7.1', '429.00', 110, 'HeadSetSennheiser.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `CPF` int(11) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `Endereco` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Senha` varchar(20) NOT NULL,
  `Cidade` varchar(45) NOT NULL,
  `Estado` varchar(2) NOT NULL,
  `CEP` int(20) NOT NULL,
  `Tipo` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`CPF`, `Nome`, `Endereco`, `Email`, `Senha`, `Cidade`, `Estado`, `CEP`, `Tipo`) VALUES
(1, 'Administrador', '', 'Admin@gmail.com', 'admin', '', '', 0, 1),
(12312, 'Marcos D\'Aurélio', 'Rua Severino de Almeida, nº 322, Casa.', 'quinha2020@gmail.com', '1234', 'Maracaí', 'SP', 19840, NULL),
(2931239, 'Cassio Siqueira', 'Rua José Carlos da Silva, nº 132, Apartamento.', 'cassio2018@gmail.com', '1234', 'Maracaí', 'SP', 19840, NULL),
(1151236345, 'Adaumar Rounir', 'Rua Severino Eiras, nº 217, Casa.', 'adaumarrounir2020@gmail.com', '1234', 'Maracaí', 'SP', 19840, NULL),
(2045682398, 'Luiz Antônio Soares D\'Aurélio', 'Rua Maria do Rosário, Nº 923, Apartamento.', 'luizantoniosoda@gmail.com', '1234', 'Maracaí', 'SP', 19840, NULL),
(2147483647, 'Daniela', 'Rua Severino da Silve, nº 2322, Apartamento.', 'daniela@gmail.com', '1234', 'Maracaí', 'SP', 19840, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `Imagem` varchar(45) NOT NULL,
  `ID_Compra` int(10) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Endereco` varchar(60) NOT NULL,
  `Quantidade` int(10) NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Data_Compra` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`Imagem`, `ID_Compra`, `CPF`, `Nome`, `Endereco`, `Quantidade`, `Valor`, `Total`, `Data_Compra`) VALUES
('TecladoRazerTarantula.png', 23, '2147483647', 'Daniela', 'Rua Severino da Silve, nº 2322, Apartamento.', 1, '339.00', '339.00', '17/10/2020 20:26'),
('MouseLogitechG5Refresh.png', 24, '2045682398', 'Luiz Antônio Soares D\'Aurélio', 'Rua Maria do Rosário, Nº 923, Apartamento.', 3, '129.00', '387.00', '17/10/2020 20:29'),
('MouseLogitechG5Refresh.png', 25, '2931239', 'Cassio Siqueira', 'Rua José Carlos da Silva, nº 132, Apartamento.', 2, '129.00', '258.00', '17/10/2020 20:37'),
('TecladoRazerTarantula.png', 26, '12312', 'Marcos D\'Aurélio', 'Rua Severino de Almeida, nº 322, Casa.', 1, '339.00', '339.00', '17/10/2020 21:26'),
('MouseLogitechV470.png', 27, '2931239', 'Cassio Siqueira', 'Rua José Carlos da Silva, nº 132, Apartamento.', 2, '216.00', '432.00', '17/10/2020 21:27'),
('MouseLogitechG5Refresh.png', 28, '12312', 'Marcos D\'Aurélio', 'Rua Severino de Almeida, nº 322, Casa.', 3, '129.00', '387.00', '17/10/2020 22:58');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CPF`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`ID_Compra`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `ID_Compra` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
