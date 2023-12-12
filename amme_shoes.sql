-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Dez-2023 às 20:56
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `amme_shoes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) UNSIGNED NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `documento` char(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` char(13) NOT NULL,
  `genero` char(1) NOT NULL,
  `cep` char(9) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `uf` char(2) NOT NULL,
  `status_cliente` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `compra_id` int(10) UNSIGNED NOT NULL,
  `produto_compra_fk` int(10) UNSIGNED NOT NULL,
  `fornecedor_compra_fk` int(11) UNSIGNED NOT NULL,
  `quantidade_compra` int(11) NOT NULL,
  `valor_total_compra` float(10,2) NOT NULL,
  `valor_unitario` float(10,2) NOT NULL,
  `data_compra` date NOT NULL,
  `status_compra` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `estoque_id` int(11) UNSIGNED NOT NULL,
  `produto_estoque_fk` int(11) UNSIGNED NOT NULL,
  `quantidade_estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome_fornecedor` varchar(255) NOT NULL,
  `documento_fornecedor` char(14) NOT NULL,
  `razao_social` varchar(255) NOT NULL,
  `nome_fantasia` varchar(255) NOT NULL,
  `cep` char(8) NOT NULL,
  `email_fornecedor` varchar(255) NOT NULL,
  `telefone` char(13) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `uf` char(2) NOT NULL,
  `status_fornecedor` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `produto_id` int(11) UNSIGNED NOT NULL,
  `fornecedor_produto_fk` int(11) UNSIGNED NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `cor_produto` varchar(255) NOT NULL,
  `tamanho_produto` char(2) NOT NULL,
  `marca_produto` varchar(255) NOT NULL,
  `modelo_produto` varchar(255) NOT NULL,
  `preco_produto` float(10,2) NOT NULL,
  `status_produto` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status_usuario` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `email`, `password`, `status_usuario`) VALUES
(1, 'admin', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'Ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`compra_id`),
  ADD KEY `produto_compra_fk` (`produto_compra_fk`),
  ADD KEY `fornecedor_compra_fk` (`fornecedor_compra_fk`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`estoque_id`),
  ADD KEY `produto_estoque_fk` (`produto_estoque_fk`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`produto_id`),
  ADD KEY `fornecedor_fk` (`fornecedor_produto_fk`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `compra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `estoque_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `produto_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fornecedor_compra_fk` FOREIGN KEY (`fornecedor_compra_fk`) REFERENCES `fornecedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produto_compra_fk` FOREIGN KEY (`produto_compra_fk`) REFERENCES `produtos` (`produto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `produto_estoque_fk` FOREIGN KEY (`produto_estoque_fk`) REFERENCES `produtos` (`produto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fornecedor_produto_fk ` FOREIGN KEY (`fornecedor_produto_fk`) REFERENCES `fornecedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
