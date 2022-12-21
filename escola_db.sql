-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Dez-2022 às 23:02
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `cpf` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `nome`, `email`, `senha`, `cpf`) VALUES
(1, 'aluno', 'aluno@aluno.com', 'c4ca4238a0b923820dcc509a6f75849b', '11111'),
(2, 'Jupira Candonga', 'jup@jup.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238'),
(3, 'Joao Arregão', 'jo@jo.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238'),
(4, 'Jupira Candongasdfd', 'j22o@j22o.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238'),
(5, 'Jupira Candonga Ultima', 'jotod@joto.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238'),
(6, 'Junior', 'jun@jun.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238'),
(7, 'Pedro', 'p@p.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238'),
(8, 'Lucas sumido', 'lucas@l.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238'),
(9, 'Jupira Candonga', 'jun2022@jun.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238'),
(10, 'zxcczcxzc', 'sccas@fsdf', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238'),
(11, 'Pedro Henrique', 'pedro@henrique.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `id_nota` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  `periodo` varchar(20) NOT NULL,
  `nota` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`id_nota`, `id_aluno`, `id_disciplina`, `periodo`, `nota`) VALUES
(3, 11, 1, '1-2022', 5),
(4, 11, 2, '2-2022', 9),
(5, 11, 2, '3-2022', 8),
(6, 11, 2, '1-2022', 3),
(7, 11, 1, '2-2022', 9),
(8, 10, 2, '1-2022', 9),
(9, 10, 2, '2-2022', 8),
(10, 10, 2, '3-2022', 7),
(11, 10, 2, '4-2022', 6),
(12, 10, 3, '1-2022', 3),
(13, 10, 3, '2-2022', 4),
(14, 10, 3, '3-2022', 5),
(15, 10, 3, '4-2022', 9),
(16, 1, 2, '1-2022', 10),
(17, 2, 2, '1-2022', 9),
(18, 3, 2, '1-2022', 8),
(19, 4, 2, '1-2022', 7),
(20, 5, 2, '1-2022', 6),
(21, 6, 2, '1-2022', 5),
(22, 7, 2, '1-2022', 4),
(23, 8, 2, '1-2022', 3),
(24, 9, 2, '1-2022', 2),
(25, 1, 2, '2-2022', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id_disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id_disciplina`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id_endereco` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `rua` varchar(40) NOT NULL,
  `numero` int(11) DEFAULT 0,
  `complemento` varchar(20) DEFAULT NULL,
  `bairro` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `ibge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`id_endereco`, `id_aluno`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `uf`, `ibge`) VALUES
(1, 1, '24725000', 'Avenida Cardeal Arcoverde', 11, 'lote 500', 'Laranjal', 'São Gonçalo', 'RJ', 3304904),
(2, 2, '24725270', 'Estrada São Pedro', 0, '', 'Vista Alegre', 'São Gonçalo', 'RJ', 3304904),
(3, 3, '24933160', 'Rua Cento e Dezoito', 18, 'Quadra 513 Lote 18', '(Jardim Atlântico Leste Itaipuaçu)', 'Maricá', 'RJ', 3302700),
(4, 4, '24725270', 'Estrada São Pedro', 500, 'casa 5', 'Vista Alegre', 'São Gonçalo', 'RJ', 3304904);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `perfil` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id_user`, `nome`, `email`, `senha`, `cpf`, `perfil`) VALUES
(1, 'adm', 'adm@adm.com', 'c4ca4238a0b923820dcc509a6f75849b', '00000', 2),
(3, 'Jupira Candonga da Luz', 'jup2@jup.com', 'c4ca4238a0b923820dcc509a6f75849b', 'c4ca4238a0b9238', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_aluno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_disciplina` (`id_disciplina`);

--
-- Índices para tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id_endereco`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `id_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`),
  ADD CONSTRAINT `id_disciplina` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplinas` (`id_disciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
