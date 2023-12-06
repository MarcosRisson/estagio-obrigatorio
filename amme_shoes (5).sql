-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Dez-2023 às 01:28
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
  `id` int(11) UNSIGNED NOT NULL,
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
  `status_cliente` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome_completo`, `email`, `password`, `documento`, `data_nascimento`, `telefone`, `genero`, `cep`, `endereco`, `cidade`, `bairro`, `uf`, `status_cliente`) VALUES
(28, 'Marcos', 'darcos077@gmail.com', '664a1b50ea33727a8ad898e8c1f5f079', '09478494910', '2004-11-04', '44999696842', 'M', '87209-128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 1),
(29, 'Adriano Ramandeli', 'adriano@adriano.com', '202cb962ac59075b964b07152d234b70', '05954995974', '0000-00-00', '', 'M', '87209072', 'Rua Juruá', 'Cianorte', 'Zona 03', 'PR', 1),
(30, 'Marcos', 'darcos077@gmail.com', '202cb962ac59075b964b07152d234b70', '09478494910', '0000-00-00', '44999696842', 'M', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 1),
(31, 'Marcos', 'darcos077@gmail.com', '202cb962ac59075b964b07152d234b70', '09478494910', '0000-00-00', '44999696842', 'M', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 1),
(32, 'Marcos', 'darcos077@gmail.com', '202cb962ac59075b964b07152d234b70', '09478494910', '0000-00-00', '44999696842', 'M', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 1),
(33, 'Marcos', 'darcos077@gmail.com', '202cb962ac59075b964b07152d234b70', '09478494910', '2004-11-04', '44999696842', 'M', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', '0', 1),
(34, 'Marcos Paulo', 'darcos077@gmail.com', 'e5e18a16d77837a56a5fbbc08cedc699', '09478494910', '2006-01-02', '44999696842', 'M', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 0),
(35, 'Marcos', 'darcos077@gmail.com', '202cb962ac59075b964b07152d234b70', '09478494910', '2004-11-04', '44999696842', 'F', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 1),
(36, 'Marcos', 'darcos077@gmail.com', '7363a0d0604902af7b70b271a0b96480', '09478494910', '0000-00-00', '44999696842', 'M', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 1),
(37, 'marcos', 'marcos@marcos.com', '202cb962ac59075b964b07152d234b70', '09478494910', '2004-11-04', '36315209', 'M', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 1),
(38, 'gustavo', 'marcos@marcos.com', '202cb962ac59075b964b07152d234b70', '09478494910', '2004-11-04', '36315209', 'M', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 1),
(39, 'isabela', 'isabela@isabela.com', '202cb962ac59075b964b07152d234b70', '09478494910', '2004-11-04', '36315209', 'F', '87209128', 'Avenida Paraíba', 'Cianorte', 'Zona 03', 'PR', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `id` int(11) UNSIGNED NOT NULL,
  `usuario_fk` int(11) UNSIGNED NOT NULL,
  `valor_total_compra` float(10,2) NOT NULL,
  `data_compra` int(10) UNSIGNED NOT NULL,
  `status_compra` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `status_fornecedor` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome_fornecedor`, `documento_fornecedor`, `razao_social`, `nome_fantasia`, `cep`, `email_fornecedor`, `telefone`, `endereco`, `bairro`, `cidade`, `uf`, `status_fornecedor`) VALUES
(2, 'MPL', '08007677000406', 'MPL INDUSTRIA E COMERCIO DE ROUPAS LTDA', 'PACO, NINE, DADO E M POLLO', '87209400', 'larissaqueiroz@gestaoapice.com.br', '32779900', 'PR-323 VIA VEREADOR OSILHO MELAO', 'ZONA 11B', 'Cianorte', 'PR', 1),
(9, '1-MPL', '08007677000406', 'MPL INDUSTRIA E COMERCIO DE ROUPAS LTDA', 'PACO, NINE, DADO E M POLLO', '87209400', 'larissaqueiroz@gestaoapice.com.br', '32779900', 'PR-323 VIA VEREADOR OSILHO MELAO', 'ZONA 11B', 'Cianorte', 'PR', 0),
(12, 'teste', '08007677000406', 'MPL INDUSTRIA E COMERCIO DE ROUPAS LTDA', 'PACO, NINE, DADO E M POLLO', '87209400', 'larissaqueiroz@gestaoapice.com.br', '32779900', 'PR-323 VIA VEREADOR OSILHO MELAO', 'ZONA 11B', 'Cianorte', 'PR', 1),
(13, 'MPL', '08007677000406', 'MPL INDUSTRIA E COMERCIO DE ROUPAS LTDA', 'PACO, NINE, DADO E M POLLO', '87209400', 'larissaqueiroz@gestaoapice.com.br', '32779900', 'PR-323 VIA VEREADOR OSILHO MELAO', 'ZONA 11B', 'Cianorte', 'PR', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_compra`
--

CREATE TABLE `pedido_compra` (
  `id` int(11) UNSIGNED NOT NULL,
  `produto_fk` int(11) UNSIGNED NOT NULL,
  `compra_fk` int(11) UNSIGNED NOT NULL,
  `quantidade_compra` int(11) NOT NULL,
  `valor_unitario` float(10,2) NOT NULL,
  `data_pedido` date NOT NULL,
  `valor_total_pedido` int(11) NOT NULL,
  `numero_pedido` int(11) NOT NULL,
  `status_pedido` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) UNSIGNED NOT NULL,
  `fornecedor_produto_fk` int(11) UNSIGNED NOT NULL,
  `estoque_fk` int(11) UNSIGNED NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `cor_produto` varchar(255) NOT NULL,
  `tamanho_produto` char(2) NOT NULL,
  `marca_produto` varchar(255) NOT NULL,
  `modelo_produto` varchar(255) NOT NULL,
  `preco_produto` float(10,2) NOT NULL,
  `status_produto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status_usuario` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `email`, `password`, `status_usuario`) VALUES
(5, 'marcos risson', 'marcos@marcos.com', '202cb962ac59075b964b07152d234b70', 0),
(28, 'Marcia Regina', 'marcia@marcia.com', '202cb962ac59075b964b07152d234b70', 0),
(29, 'teste@teste.com', 'teste@teste.com', '202cb962ac59075b964b07152d234b70', 0),
(31, 'Joao Augusto', 'joao@joao.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(32, 'gustavo', 'gustavo@gustavo.com', '202cb962ac59075b964b07152d234b70', 0),
(33, 'jonas', 'jonas@jonas.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(34, 'Adriano Ramandeli', 'adriano@adriano.com', '202cb962ac59075b964b07152d234b70', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_fk` (`usuario_fk`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedido_compra`
--
ALTER TABLE `pedido_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produto_fk` (`produto_fk`) USING BTREE,
  ADD KEY `compra_fk` (`compra_fk`) USING BTREE;

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fornecedor_fk` (`fornecedor_produto_fk`),
  ADD KEY `estoque_fk` (`estoque_fk`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `pedido_compra`
--
ALTER TABLE `pedido_compra`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `usuario_fk` FOREIGN KEY (`usuario_fk`) REFERENCES `usuarios` (`id`);

--
-- Limitadores para a tabela `pedido_compra`
--
ALTER TABLE `pedido_compra`
  ADD CONSTRAINT `compra_fk` FOREIGN KEY (`compra_fk`) REFERENCES `compra` (`id`),
  ADD CONSTRAINT `produto_fk` FOREIGN KEY (`produto_fk`) REFERENCES `produtos` (`id`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `estoque_fk` FOREIGN KEY (`estoque_fk`) REFERENCES `estoque` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
