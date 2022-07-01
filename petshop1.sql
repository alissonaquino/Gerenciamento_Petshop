-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Maio-2022 às 03:08
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE `consulta` (
  `id_con` int(11) NOT NULL,
  `taxi_con` varchar(45) NOT NULL,
  `descricao_con` varchar(100) NOT NULL,
  `tipo_con` varchar(50) NOT NULL,
  `endereco_con` varchar(100) NOT NULL,
  `status_con` varchar(30) NOT NULL,
  `data_con` date NOT NULL,
  `id_fun` int(11) NOT NULL,
  `id_pet` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`id_con`, `taxi_con`, `descricao_con`, `tipo_con`, `endereco_con`, `status_con`, `data_con`, `id_fun`, `id_pet`, `id_usu`) VALUES
(4, 'não', 'Banhinho bom', 'Banho', ', , , , ', 'Concluida', '2022-04-12', 3, 28, 2),
(5, 'sim', 'asfasfasfasfasfa', 'Banho', 'lorena, , , ,', 'Concluida', '2022-04-16', 3, 28, 2),
(6, 'sim', 'Hoje banho', 'Banho', 'lorena, , , ,', 'Cancelada', '2022-03-31', 0, 31, 2),
(7, 'sim', '', 'selecione uma opção', 'Guara, ola, rua 6, 213, casa', 'Cancelada', '0000-00-00', 0, 28, 2),
(8, 'sim', '', 'selecione uma opção', '', '', '0000-00-00', 0, 16, 3),
(9, '', 'ADASFSA', 'Banho', '', '', '1111-11-22', 0, 16, 2),
(10, 'sim', 'Teste', 'Banho', 'Lorena, Bairro, rua, 22, casa', 'Concluida', '2022-05-10', 0, 35, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pet`
--

CREATE TABLE `pet` (
  `id_pet` int(11) NOT NULL,
  `nome_pet` varchar(30) NOT NULL,
  `animal_pet` varchar(30) NOT NULL,
  `raca_pet` varchar(30) NOT NULL,
  `data_pet` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto_pet` varchar(60) NOT NULL,
  `id_usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pet`
--

INSERT INTO `pet` (`id_pet`, `nome_pet`, `animal_pet`, `raca_pet`, `data_pet`, `foto_pet`, `id_usu`) VALUES
(16, 'Smash', 'Cachorro', 'Boxer', '2022-05-02 06:11:18', '0', 0),
(22, 'Pipoca', 'Cachorro', 'Desconhecida', '2022-03-29 04:33:09', '0', 0),
(24, 'cachorro', 'Cachorro', 'Afegão Hound', '2022-04-04 17:24:30', '0', 0),
(26, 'lai', 'Gato', 'Persa', '2022-05-02 16:52:30', '736dd619b609d08a69c30fe37fed64b6.jpg', 2),
(27, 'lai', 'Cachorro', 'Poodle', '2022-05-02 05:04:26', '0', 2),
(28, 'lai', 'Cachorro', 'Poodle', '2022-04-27 19:19:14', '1092341d5cc86845c91abfa0d0a81666.jpg', 2),
(31, 'Pipoca', 'Cachorro', 'Pastor-alemão', '2022-04-28 20:28:40', '602562a6d5e73ab021a5240361cce70b.jpg', 2),
(34, 'Pipoca', 'Cachorro', '', '2022-05-02 06:24:27', '9c8aab2c53b614a41e736ca2b408caf7', 3),
(35, 'Pipoca', 'Gato', '', '2022-05-02 06:24:46', '7ef92cef794564f3972939b5302dc51c', 3),
(36, 'Pipoca', 'Gato', '', '2022-05-02 06:25:10', '7ca27c77e7bae018151e2ffef685a337.jpg', 3),
(37, 'exclusivo', 'Cachorro', '', '2022-05-02 06:26:18', '076601057eceaa2b7b0edfcdcfa3d80f.jpg', 2),
(38, '2', 'Gato', '', '2022-05-02 06:28:05', 'b3f750e71d0559036a303cab3cb0fb39.jpg', 2),
(39, 'ad', 'Gato', '', '2022-05-02 06:28:16', 'b97261bfa10c8d0996e213ae0d50ff1e', 2),
(40, 'smash', 'Cachorro', 'Pastor-alemão', '2022-05-02 06:30:30', 'd24d9fe91a3eef3c9d83626db1f82eee.jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL,
  `nome_servico` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `valor_servico` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`id_servico`, `nome_servico`, `valor_servico`) VALUES
(1, 'banho', '25.00'),
(7, 'Veterinario', '50.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usu` int(11) NOT NULL,
  `nome_usu` varchar(50) NOT NULL,
  `email_usu` varchar(50) NOT NULL,
  `telefone_usu` varchar(50) NOT NULL,
  `cidade_usu` varchar(50) NOT NULL,
  `bairro_usu` varchar(50) NOT NULL,
  `rua_usu` varchar(50) NOT NULL,
  `numero_usu` varchar(50) NOT NULL,
  `complemento_usu` varchar(50) NOT NULL,
  `tipo_usu` int(11) NOT NULL,
  `senha_usu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usu`, `nome_usu`, `email_usu`, `telefone_usu`, `cidade_usu`, `bairro_usu`, `rua_usu`, `numero_usu`, `complemento_usu`, `tipo_usu`, `senha_usu`) VALUES
(2, 'Alisson', 'user1@gmail.com', '123', 'lorena', '', '', '', '', 0, '202cb962ac59075b964b07152d234b70'),
(3, 'adm', 'adm@email.com', '123', 'Lorena', 'Bairro', 'rua', '22', 'casa', 1, '202cb962ac59075b964b07152d234b70');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_con`);

--
-- Índices para tabela `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id_pet`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id_servico`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usu`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id_con` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pet`
--
ALTER TABLE `pet`
  MODIFY `id_pet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
