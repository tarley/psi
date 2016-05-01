-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 01, 2016 at 03:21 AM
-- Server version: 5.7.7-rc
-- PHP Version: 5.4.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `psi`
--

-- --------------------------------------------------------

--
-- Table structure for table `BAIRRO`
--

CREATE TABLE IF NOT EXISTS `BAIRRO` (
  `COD_BAIRRO` int(11) NOT NULL,
  `DES_BAIRRO` varchar(200) DEFAULT NULL,
  `COD_REGIAO` int(11) DEFAULT NULL,
  `COD_CIDADE` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BAIRRO`
--

INSERT INTO `BAIRRO` (`COD_BAIRRO`, `DES_BAIRRO`, `COD_REGIAO`, `COD_CIDADE`) VALUES
(4, '31 de Março', 5, 1),
(5, 'Aarão Reis', 6, 1),
(6, 'Acaba Mundo', 2, 1),
(7, 'Adalberto Pinheiro', 1, 1),
(8, 'Agl. Beira Linha', 4, 1),
(9, 'Aglomerado Barragem (parte)', 2, 1),
(10, 'Aglomerado Camponesa (parte)', 3, 1),
(11, 'Aglomerado da Serra (trecho situado no bairro Novo São Lucas)', 3, 1),
(12, 'Aglomerado Morro das Pedras: Antena/Chácara Leonina', 7, 1),
(13, 'Aglomerado São Tomás/São Bernardo (Parte)', 8, 1),
(14, 'Aglomerado Serra (parte)', 2, 1),
(15, 'Alípio de Melo', 5, 1),
(16, 'Alto Barroca', 7, 1),
(17, 'Alto do Caiçara', 5, 1),
(18, 'Alto dos Pinheiros', 5, 1),
(19, 'Alto Vera Cruz', 3, 1),
(20, 'Alto Vera Cruz (parte)', 3, 1),
(21, 'Alvaro Camargos', 5, 1),
(22, 'Anchieta', 2, 1),
(23, 'Antônio Diniz', 6, 1),
(24, 'Antônio Ribeiro de Abreu', 6, 1),
(25, 'Antenas', 1, 1),
(26, 'Aparecida', 5, 1),
(27, 'Aparecida 7º Seção', 5, 1),
(28, 'Araguaia', 1, 1),
(29, 'Área da Mata do Cercadinho', 7, 1),
(30, 'Área dos Camargos', 5, 1),
(31, 'Atila de Paiva', 1, 1),
(32, 'B. Vila Clóris', 6, 1),
(33, 'Bairro da Graça', 4, 1),
(34, 'Bairro das Indústrias', 1, 1),
(35, 'Bairro das Mansões', 7, 1),
(36, 'Bairro Novo Aarão Reis', 6, 1),
(37, 'Baleia', 3, 1),
(38, 'Bandeirantes', 8, 1),
(39, 'Bandeirantes (parte)', 2, 1),
(40, 'Barreiro de Baixo', 1, 1),
(41, 'Barreiro de Cima', 1, 1),
(42, 'Barro Preto', 2, 1),
(43, 'Barroca', 7, 1),
(44, 'Beija Flor', 4, 1),
(45, 'Bela Vitória', 4, 1),
(46, 'Belmonte', 4, 1),
(47, 'Belvedere', 2, 1),
(48, 'Betânia', 7, 1),
(49, 'Boa Vista', 3, 1),
(50, 'Bom Jesus', 5, 1),
(51, 'Bonfim', 5, 1),
(52, 'Braúnas', 8, 1),
(53, 'Brasil Industrial', 1, 1),
(54, 'Buritis', 7, 1),
(55, 'Céu Azul', 8, 1),
(56, 'Céu Azul', 9, 1),
(57, 'Cabana', 7, 1),
(58, 'Cabana Pai Tomás', 7, 1),
(59, 'Cachoeirinha', 4, 1),
(60, 'Cachoeirinha I e II', 5, 1),
(61, 'Caetano Furquim (parte)', 3, 1),
(62, 'Caiçara', 5, 1),
(63, 'Caiçara Adelaide', 5, 1),
(64, 'Calafate', 7, 1),
(65, 'Califórnia', 5, 1),
(66, 'Califórnia (parte)', 5, 1),
(67, 'Camargos', 5, 1),
(68, 'Campo Alegre', 6, 1),
(69, 'Campus Pampulha da UFMG', 8, 1),
(70, 'Canaã', 6, 1),
(71, 'Candelária', 9, 1),
(72, 'Capitão Eduardo', 4, 1),
(73, 'Cardoso', 1, 1),
(74, 'Carlos Prates', 5, 1),
(75, 'Carmo', 2, 1),
(76, 'Casa Branca', 3, 1),
(77, 'Castelo', 8, 1),
(78, 'Celestino', 6, 1),
(79, 'Cenáculo', 9, 1),
(80, 'Centro', 2, 1),
(81, 'Centro de Venda Nova', 9, 1),
(82, 'Cidade Jardim', 2, 1),
(83, 'Cidade Nova', 4, 1),
(84, 'Colégio Batista', 3, 1),
(85, 'Comiteco', 2, 1),
(86, 'Concórdia', 4, 1),
(87, 'Confisco', 8, 1),
(88, 'Conj. Habitacional Capitão Eduardo', 4, 1),
(89, 'Conj. Habitacional Paulo VI', 4, 1),
(90, 'Conjunto Celso Machado', 5, 1),
(91, 'Conjunto da Lagoa', 8, 1),
(92, 'Conjunto Esperança', 1, 1),
(93, 'Conjunto Flávio de Oliveira', 1, 1),
(94, 'Conjunto Floramar', 6, 1),
(95, 'Conjunto Habitacional Bom Sucesso', 1, 1),
(96, 'Conjunto Habitacional Jardim Filadélfia', 5, 1),
(97, 'Conjunto Habitacional Jatobá IV', 1, 1),
(98, 'Conjunto Habitacional João Pio de Souza (parte)', 3, 1),
(99, 'Conjunto Habitacional Mariano de Abreu', 3, 1),
(100, 'Conjunto Habitacional Mariquinhas', 6, 1),
(101, 'Conjunto Habitacional Novo Ribeiro de Abreu', 6, 1),
(102, 'Conjunto Habitacional Zilah Spósito', 6, 1),
(103, 'Conjunto Itacolomi', 5, 1),
(104, 'Conjunto Jardim Felicidade', 6, 1),
(105, 'Conjunto Maldonado', 1, 1),
(106, 'Conjunto Ribeiro de Abreu', 4, 1),
(107, 'Conjunto Santa Maria', 7, 1),
(108, 'Copacabana', 9, 1),
(109, 'Copacabana I', 8, 1),
(110, 'Coqueiral', 5, 1),
(111, 'Coqueiros', 5, 1),
(112, 'Coração de Jesus', 2, 1),
(113, 'Coração Eucarístico', 5, 1),
(114, 'Cristo Redentor', 1, 1),
(115, 'Cruzeiro', 2, 1),
(116, 'Delta', 5, 1),
(117, 'Diamante', 1, 1),
(118, 'Dom Cabral', 5, 1),
(119, 'Dom Joaquim', 4, 1),
(120, 'Dom Silvério', 4, 1),
(121, 'Dona Clara', 8, 1),
(122, 'Durval de Barros', 1, 1),
(123, 'Engenho Nogueira', 8, 1),
(124, 'Enseada das Garças', 8, 1),
(125, 'Ermelinda', 5, 1),
(126, 'Esplanada', 3, 1),
(127, 'Esplendor', 9, 1),
(128, 'Estoril', 7, 1),
(129, 'Estrela Dalva', 7, 1),
(130, 'Etelvina Carneiro', 6, 1),
(131, 'Eymard', 4, 1),
(132, 'Fernão Dias', 4, 1),
(133, 'Filadélfia', 5, 1),
(134, 'Flávio Marques Lisboa', 1, 1),
(135, 'Flamengo', 9, 1),
(136, 'Floramar', 6, 1),
(137, 'Floresta', 3, 1),
(138, 'Floresta (área interna à Av. Contorno)', 2, 1),
(139, 'Frei Leopoldo', 6, 1),
(140, 'Funcionários', 2, 1),
(141, 'Gameleira', 7, 1),
(142, 'Getulio Vargas', 1, 1),
(143, 'Glória', 5, 1),
(144, 'Glalijá', 7, 1),
(145, 'Glalijá (Norte da V.U.L.O.)', 5, 1),
(146, 'Goiânia', 4, 1),
(147, 'Gorduras', 4, 1),
(148, 'Governador Benedito Valadares', 5, 1),
(149, 'Grajaú', 7, 1),
(150, 'Guarani', 6, 1),
(151, 'Gutierrez', 7, 1),
(152, 'Havai', 7, 1),
(153, 'Heliopólis', 6, 1),
(154, 'Horto (parte ao norte da avenida Silviano Brandão)', 3, 1),
(155, 'Horto (parte ao sul da avenida Silviano Brandão)', 3, 1),
(156, 'Hosana', 1, 1),
(157, 'Imbaúbas', 7, 1),
(158, 'Inconfidência', 5, 1),
(159, 'Independência', 1, 1),
(160, 'Inestan (parte)', 8, 1),
(161, 'Instituto Agronômico', 3, 1),
(162, 'Ipê', 4, 1),
(163, 'Ipiranga', 4, 1),
(164, 'Itaipú', 1, 1),
(165, 'Itapoã', 8, 1),
(166, 'Jaqueline', 6, 1),
(167, 'Jaraguá', 8, 1),
(168, 'Jardim Alvorada', 5, 1),
(169, 'Jardim América', 7, 1),
(170, 'Jardim Atlântico', 8, 1),
(171, 'Jardim dos Comerciários', 9, 1),
(172, 'Jardim Europa', 9, 1),
(173, 'Jardim Guanabara', 6, 1),
(174, 'Jardim Leblon', 9, 1),
(175, 'Jardim Montanhês', 5, 1),
(176, 'Jardim Vitória', 4, 1),
(177, 'Jardinópolis', 7, 1),
(178, 'Jatobá', 1, 1),
(179, 'João Pinheiro', 5, 1),
(180, 'Juliana', 6, 1),
(181, 'Kátia', 9, 1),
(182, 'Lagoa', 9, 1),
(183, 'Lagoinha', 5, 1),
(184, 'Lagoinha', 9, 1),
(185, 'Lagoinha (direita da Av. Antônio Carlos)', 4, 1),
(186, 'Lajedo', 6, 1),
(187, 'Laranjeiras', 6, 1),
(188, 'Leblon', 9, 1),
(189, 'Letícia', 9, 1),
(190, 'Liberdade', 8, 1),
(191, 'Lindéia', 1, 1),
(192, 'Lorena', 5, 1),
(193, 'Lourdes', 2, 1),
(194, 'Luxemburgo', 2, 1),
(195, 'Madre Gertrudes (Magnesita)', 7, 1),
(196, 'Madri', 6, 1),
(197, 'Manacás', 8, 1),
(198, 'Mangabeiras', 2, 1),
(199, 'Mannesman', 1, 1),
(200, 'Mantiqueira', 9, 1),
(201, 'Marajó', 7, 1),
(202, 'Maria Goretti', 4, 1),
(203, 'Maria Helena', 9, 1),
(204, 'Maria Virgínia', 4, 1),
(205, 'Marize', 6, 1),
(206, 'Marmiteiros', 5, 1),
(207, 'Milionários', 1, 1),
(208, 'Minas Brasil', 5, 1),
(209, 'Minas Caixa', 9, 1),
(210, 'Minaslândia', 6, 1),
(211, 'Mineirão', 1, 1),
(212, 'Miramar', 1, 1),
(213, 'Monsenhor Messias', 5, 1),
(214, 'Monte Azul (Industrial Rodrigues da Cunha)', 6, 1),
(215, 'Morro das Pedras', 7, 1),
(216, 'Morro do Querosene', 2, 1),
(217, 'Nazaré', 4, 1),
(218, 'Nova América', 9, 1),
(219, 'Nova Barroca', 7, 1),
(220, 'Nova Cachoeirinha', 4, 1),
(221, 'Nova Cintra', 7, 1),
(222, 'Nova Esperança', 5, 1),
(223, 'Nova Floresta', 4, 1),
(224, 'Nova Gameleira', 7, 1),
(225, 'Nova Gameleira II', 7, 1),
(226, 'Nova Granada', 7, 1),
(227, 'Nova Pampulha', 8, 1),
(228, 'Nova Suíça', 7, 1),
(229, 'Nova Vista', 3, 1),
(230, 'Nova York', 9, 1),
(231, 'Novo das Industrias', 1, 1),
(232, 'Novo Letícia', 9, 1),
(233, 'Novo Ouro Preto', 8, 1),
(234, 'Novo São Lucas', 3, 1),
(235, 'Novo Santa Cecilia', 1, 1),
(236, 'Oeste', 5, 1),
(237, 'Oeste (Nova Gameleira)', 7, 1),
(238, 'Oeste do onça', 6, 1),
(239, 'Olária', 1, 1),
(240, 'Olhos D''agua', 1, 1),
(241, 'Ouro Minas', 4, 1),
(242, 'OuroPreto', 8, 1),
(243, 'Padre Eustáquio', 5, 1),
(244, 'Padre Júlio Maria', 6, 1),
(245, 'Palmares', 4, 1),
(246, 'Palmeiras', 7, 1),
(247, 'Pampulha', 8, 1),
(248, 'Paquetá', 8, 1),
(249, 'Paraúna', 9, 1),
(250, 'Paraíso', 3, 1),
(251, 'Parque Belmonte', 4, 1),
(252, 'Parque das Mangabeiras', 2, 1),
(253, 'Patrocínio', 7, 1),
(254, 'Paulo VI', 4, 1),
(255, 'Pedro II', 5, 1),
(256, 'Peru', 5, 1),
(257, 'Pilar (Norte do Anel)', 7, 1),
(258, 'Pilar (Sul do Anel)', 1, 1),
(259, 'Pindorama', 5, 1),
(260, 'Pindura Saia', 2, 1),
(261, 'Pirajá', 4, 1),
(262, 'Planalto (oeste da Av. Carlos Guedes)', 6, 1),
(263, 'Pompéia', 3, 1),
(264, 'Pongelupe', 1, 1),
(265, 'Pousada Santo Antônio', 4, 1),
(266, 'Prado', 7, 1),
(267, 'Primeiro de Maio', 6, 1),
(268, 'Providência', 6, 1),
(269, 'PUC', 5, 1),
(270, 'Regina', 1, 1),
(271, 'Renascença', 4, 1),
(272, 'Ribeiro de Abreu', 4, 1),
(273, 'Rio Branco', 9, 1),
(274, 'São Bernardo', 6, 1),
(275, 'São Cristóvão', 5, 1),
(276, 'São Francisco', 8, 1),
(277, 'São Gabriel', 4, 1),
(278, 'São Gabriel', 4, 1),
(279, 'São Geraldo', 3, 1),
(280, 'São Gonçalo', 6, 1),
(281, 'São João Batista', 4, 1),
(282, 'São João Batista', 9, 1),
(283, 'São José', 8, 1),
(284, 'São José (parte)', 5, 1),
(285, 'São José A (parte)', 8, 1),
(286, 'São Luíz', 8, 1),
(287, 'São Lucas', 2, 1),
(288, 'São Marcos', 4, 1),
(289, 'São Paulo', 4, 1),
(290, 'São Paulo (Piratininga)', 9, 1),
(291, 'São Pedro', 2, 1),
(292, 'São Pedro', 9, 1),
(293, 'São Salvador', 5, 1),
(294, 'SãoBento', 2, 1),
(295, 'Sagrada Família', 3, 1),
(296, 'Salgado Filho', 7, 1),
(297, 'Santa Amélia', 8, 1),
(298, 'Santa Branca', 8, 1),
(299, 'Santa Cecília', 1, 1),
(300, 'Santa Cruz', 1, 1),
(301, 'Santa cruz', 4, 1),
(302, 'Santa Efigênia', 3, 1),
(303, 'Santa Efigênia (área hospitalar)', 2, 1),
(304, 'Santa Helena', 1, 1),
(305, 'Santa Helena', 1, 1),
(306, 'Santa Inês', 3, 1),
(307, 'Santa Isabel', 2, 1),
(308, 'Santa Lúcia', 2, 1),
(309, 'Santa Mônica', 8, 1),
(310, 'Santa Mônica', 9, 1),
(311, 'Santa Margarida', 1, 1),
(312, 'Santa Maria', 5, 1),
(313, 'Santa Rita de Cássia', 2, 1),
(314, 'Santa Rosa', 8, 1),
(315, 'Santa Sofia/São Jorge', 7, 1),
(316, 'Santa Tereza', 3, 1),
(317, 'Santa Terezinha', 8, 1),
(318, 'Santo Agostinho', 2, 1),
(319, 'Santo Agostinho', 2, 1),
(320, 'Santo André', 5, 1),
(321, 'Santo André', 5, 1),
(322, 'Santo Antônio', 2, 1),
(323, 'Sarandi', 8, 1),
(324, 'Saudade', 3, 1),
(325, 'Savassi', 2, 1),
(326, 'Serra', 2, 1),
(327, 'Serra Verde', 9, 1),
(328, 'Serrano', 5, 1),
(329, 'Serrano (Pampulha)', 8, 1),
(330, 'Silveira', 4, 1),
(331, 'Sinimbu', 9, 1),
(332, 'Sion', 2, 1),
(333, 'Solar', 1, 1),
(334, 'Solar II', 1, 1),
(335, 'Solimões', 6, 1),
(336, 'Sport Club', 7, 1),
(337, 'Sumaré', 5, 1),
(338, 'Suzana', 8, 1),
(339, 'Taquaril', 3, 1),
(340, 'Teixeira Dias', 1, 1),
(341, 'Teresa Cristina I e II', 7, 1),
(342, 'Tirol', 1, 1),
(343, 'Trevo', 8, 1),
(344, 'Tupi A e B', 6, 1),
(345, 'União', 4, 1),
(346, 'Universitário', 8, 1),
(347, 'Universo', 9, 1),
(348, 'Urucuia', 1, 1),
(349, 'Várzea da Palma', 9, 1),
(350, 'Vale do Jatobá', 1, 1),
(351, 'Ventosa', 7, 1),
(352, 'Vera Cruz', 3, 1),
(353, 'Vila Aeroporto', 6, 1),
(354, 'Vila Alta Tensão', 1, 1),
(355, 'Vila Antena', 5, 1),
(356, 'Vila Antena Vila Mantiqueira', 9, 1),
(357, 'Vila Apolônia', 9, 1),
(358, 'Vila Bacuraus', 6, 1),
(359, 'Vila Barão Homem de Melo', 7, 1),
(360, 'Vila Belém', 3, 1),
(361, 'Vila Bernadete', 1, 1),
(362, 'Vila Biquinha', 6, 1),
(363, 'Vila Boa Esperança', 4, 1),
(364, 'Vila Boa União', 6, 1),
(365, 'Vila Buraco Quente', 3, 1),
(366, 'Vila Cônego Pinheiro', 3, 1),
(367, 'Vila Capri', 9, 1),
(368, 'Vila Carioca', 4, 1),
(369, 'Vila Castanheira', 1, 1),
(370, 'Vila Cemig', 1, 1),
(371, 'Vila Copacabana', 9, 1),
(372, 'Vila Copasa', 1, 1),
(373, 'Vila Corumbiara', 1, 1),
(374, 'Vila da Área (Granja de Freitas)', 3, 1),
(375, 'Vila da Grota', 3, 1),
(376, 'Vila da Paz', 4, 1),
(377, 'Vila de Sá', 4, 1),
(378, 'Vila do Pombal', 4, 1),
(379, 'Vila dos Anjos', 9, 1),
(380, 'Vila Estrela', 9, 1),
(381, 'Vila Estrela (parte)', 2, 1),
(382, 'Vila Formosa', 1, 1),
(383, 'Vila Germânia', 1, 1),
(384, 'Vila Grotinha', 4, 1),
(385, 'Vila Guaratã', 7, 1),
(386, 'Vila Humaitá', 4, 1),
(387, 'Vila Independência', 1, 1),
(388, 'Vila Ipiranga', 4, 1),
(389, 'Vila Isabel', 8, 1),
(390, 'Vila Itamarati', 9, 1),
(391, 'Vila João Alfredo', 3, 1),
(392, 'Vila Mãe dos Pobres', 9, 1),
(393, 'Vila Mangueiras', 1, 1),
(394, 'Vila Maravilha I, II, III e IV (parte)', 5, 1),
(395, 'Vila Maria', 4, 1),
(396, 'Vila Marieta', 1, 1),
(397, 'Vila Matadouro', 4, 1),
(398, 'Vila Minas Caixa', 9, 1),
(399, 'Vila Nossa Senhora Aparecida', 9, 1),
(400, 'Vila Nossa Senhora do Rosário', 3, 1),
(401, 'Vila Nova Cachoeirinha', 5, 1),
(402, 'Vila Nova dos Milionários', 1, 1),
(403, 'Vila Nova Paraíso', 7, 1),
(404, 'Vila Oeste', 5, 1),
(405, 'Vila Paris', 2, 1),
(406, 'Vila Pedreira Prado Lopes', 5, 1),
(407, 'Vila Penha', 4, 1),
(408, 'Vila Petropólis', 1, 1),
(409, 'Vila Piratininga', 1, 1),
(410, 'Vila Presidente Vargas', 1, 1),
(411, 'Vila Real', 5, 1),
(412, 'Vila Rock in Rio', 3, 1),
(413, 'Vila São João Batista', 9, 1),
(414, 'Vila São José', 5, 1),
(415, 'Vila São José', 9, 1),
(416, 'Vila São Paulo', 4, 1),
(417, 'Vila São Rafael (parte)', 3, 1),
(418, 'Vila São Sebastião', 4, 1),
(419, 'Vila São Tomás', 6, 1),
(420, 'Vila São Vicente', 3, 1),
(421, 'Vila Santa Branca', 9, 1),
(422, 'Vila Santa Rita', 1, 1),
(423, 'Vila Santo Antônio (Barroquinha)', 5, 1),
(424, 'Vila Senhor dos Passos', 5, 1),
(425, 'Vila Serra Verde', 9, 1),
(426, 'Vila SESC', 9, 1),
(427, 'Vila Tiradentes', 4, 1),
(428, 'Vila Virgínia', 5, 1),
(429, 'Vista Alegre', 7, 1),
(430, 'Vista do Sol', 4, 1),
(431, 'Washington Pires', 1, 1),
(432, 'Xangrilá', 8, 1),
(433, 'Xodó', 6, 1),
(434, 'Zona Rural (Leste do Onça)', 4, 1),
(435, 'Zona Rural (Norte do Isidoro)', 6, 1),
(436, 'Zona Rural (Serra do Curral)', 1, 1),
(437, 'Zona rural (sul do Isidoro)', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `CIDADE`
--

CREATE TABLE IF NOT EXISTS `CIDADE` (
  `COD_CIDADE` int(11) NOT NULL,
  `NOM_CIDADE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CIDADE`
--

INSERT INTO `CIDADE` (`COD_CIDADE`, `NOM_CIDADE`) VALUES
(1, 'BELO HORIZONTE');

-- --------------------------------------------------------

--
-- Table structure for table `REGIAO`
--

CREATE TABLE IF NOT EXISTS `REGIAO` (
  `COD_REGIAO` int(11) NOT NULL,
  `DES_REGIAO` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `REGIAO`
--

INSERT INTO `REGIAO` (`COD_REGIAO`, `DES_REGIAO`) VALUES
(1, 'Barreiro'),
(2, 'Centro Sul'),
(3, 'Leste'),
(4, 'Nordeste'),
(5, 'Noroeste'),
(6, 'Norte'),
(7, 'Oeste'),
(8, 'Pampulha'),
(9, 'Venda Nova');

-- --------------------------------------------------------

--
-- Table structure for table `Tarefa`
--

CREATE TABLE IF NOT EXISTS `Tarefa` (
  `id` bigint(20) NOT NULL,
  `dataFinalizacao` datetime DEFAULT NULL,
  `descricao` varchar(255) NOT NULL,
  `finalizado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TIPO_ATENDIMENTO`
--

CREATE TABLE IF NOT EXISTS `TIPO_ATENDIMENTO` (
  `COD_TIPO_ATENDIMENTO` int(11) NOT NULL,
  `DES_TIPO_ATENDIMENTO` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TIPO_ATENDIMENTO`
--

INSERT INTO `TIPO_ATENDIMENTO` (`COD_TIPO_ATENDIMENTO`, `DES_TIPO_ATENDIMENTO`) VALUES
(1, 'Psicologia'),
(41, 'Prioritário'),
(42, 'Terapia ocupacional'),
(44, 'Atendimento Agitado'),
(51, 'Atendimento de Emergência'),
(52, 'Psiquiatria'),
(58, 'fsdfsdfsdfsd'),
(59, 'Teste Apresentação Seleniun');

-- --------------------------------------------------------

--
-- Table structure for table `TIPO_ATENDIMENTO_UNIDADE`
--

CREATE TABLE IF NOT EXISTS `TIPO_ATENDIMENTO_UNIDADE` (
  `cod_tipo_atendimento` bigint(20) NOT NULL,
  `cod_unidade_atendimento` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TIPO_UNIDADE_ATENDIMENTO`
--

CREATE TABLE IF NOT EXISTS `TIPO_UNIDADE_ATENDIMENTO` (
  `COD_TIPO_UNIDADE` int(11) NOT NULL,
  `DES_TIPO_UNIDADE` varchar(200) DEFAULT NULL,
  `cod_tipo` bigint(20) NOT NULL,
  `des_tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TIPO_UNIDADE_ATENDIMENTO`
--

INSERT INTO `TIPO_UNIDADE_ATENDIMENTO` (`COD_TIPO_UNIDADE`, `DES_TIPO_UNIDADE`, `cod_tipo`, `des_tipo`) VALUES
(1, 'Casa de acolhimento', 0, NULL),
(2, 'Hospital', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UNIDADE_ATENDIMENTO`
--

CREATE TABLE IF NOT EXISTS `UNIDADE_ATENDIMENTO` (
  `COD_UNIDADE_ATENDIMENTO` int(11) NOT NULL,
  `COD_TIPO_ATENDIMENTO` int(11) DEFAULT NULL,
  `COD_BAIRRO` int(11) DEFAULT NULL,
  `COD_REGIAO` int(11) DEFAULT NULL,
  `NOM_UNIDADE_ATENDIMENTO` varchar(200) DEFAULT NULL,
  `NOM_LOGRADOURO` varchar(200) DEFAULT NULL,
  `NUM_NUMERO` int(11) DEFAULT NULL,
  `NUM_CEP` varchar(100) DEFAULT NULL,
  `NUM_TEL1` varchar(100) DEFAULT NULL,
  `NUM_TEL2` varchar(100) DEFAULT NULL,
  `NUM_TEL3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UNIDADE_ATENDIMENTO`
--

INSERT INTO `UNIDADE_ATENDIMENTO` (`COD_UNIDADE_ATENDIMENTO`, `COD_TIPO_ATENDIMENTO`, `COD_BAIRRO`, `COD_REGIAO`, `NOM_UNIDADE_ATENDIMENTO`, `NOM_LOGRADOURO`, `NUM_NUMERO`, `NUM_CEP`, `NUM_TEL1`, `NUM_TEL2`, `NUM_TEL3`) VALUES
(1, 1, 40, 1, 'Cersam', 'Rua: Desembargador Ribeiro da Luz', 29, '30640-040', '(31)3277-1530', '(31)3277-5908', NULL),
(2, 1, 73, 1, 'Cersam-AD', 'Av. Barão de Monte Alto', 211, '30626-480', '(31)3277-3630', '(31)3277-3632', '(31)3277-3631'),
(3, 1, 75, 2, 'Centro de Convivência Cézar Campos', 'Rua: Orenoco', 68, '30310-060', '(31)3277-9447', '(31)3277-9448', NULL),
(4, NULL, 223, 4, 'Cersam ne', 'Pça. 13 de Maio', 0, '31140-480', '(31) 3277-6065', '(31) 3277-6067', ''),
(5, 1, 289, 4, 'Cersamad', 'Rua: Joaquim Gouveia', 600, '31910-060 ', '(31)3276-7532', '(31)3276-7539', NULL),
(6, NULL, 289, 4, 'Centro de Convivência São Paulo', 'Rua: Aiuruoca', 501, '31910-130', '(31) 3277-6684', '(31) 3277-6681', ''),
(7, 1, 243, 5, 'Cersam', 'Rua: Camarugi', 10, '30720-090', '(31)3277-7220 ', '(31)3277-7229 ', '(31)3277-7216'),
(8, 1, 243, 5, 'Cersami', 'Rua: Camarugi', 10, '30720-090', '(31)3277-7227', NULL, NULL),
(9, NULL, 243, 5, 'Centro de Convivência Aeho', 'Rua: Manhumirim', 415, '30720-070', '(31) 3277-7228', '', ''),
(10, 1, 344, 6, 'Cersam', 'Rua: Furquim Werneck', 125, '31840-050', '(31)3246-9561 ', '(31)3246-9562', '(31)3246-9563 '),
(11, 1, 210, 6, 'Centro de Convivência Norte', 'Rua: Arantina', 375, '31812-010', '(31)3277-7482', '(31)3277-6733', NULL),
(12, 1, 141, 7, 'Centro de Convivência Oeste', 'Rua: Juscelino Barbosa', 125, '31560-060', '(31)3277-1543', NULL, NULL),
(13, 1, 226, 7, 'Cersam', 'Rua: Oscar Trompowski', 1325, '30451-001', '(31)3277-9601', '(31)3277-6488', NULL),
(14, 1, 228, 8, 'Cersam', 'Rua: Mel', 77, '31560-060', '(31)3277-7918', '(31)3277-7934 ', NULL),
(15, 1, 38, 8, 'Cersam-AD', 'Rua: Ligúria', 70, '31340-360', '(31)3277-1574', '(31)3277-1575 ', NULL),
(16, 1, 228, 8, 'Centro de Convivência Pampulha', 'Av. Portugal', 3291, '31560-000', '(31)3277-7310 ', NULL, NULL),
(17, 1, 276, 8, 'Centro de Saúde São Francisco', 'Rua: Aveiro', 191, '31255-060 ', '(31)3477-7844', '(31)3477-7845', NULL),
(18, 1, 286, 8, 'Centro de Convivência Lagoa da Pampulha', 'Av. Dom Orione', 220, '31310-020', '(31)3277-7310', NULL, NULL),
(19, 1, 317, 8, 'Unidade de Pronto Atendimento 24horas Pampulha (UPA)', 'Av. Santa Terezinha', 515, '31365-000', '(31)3277-8495', '(31)3277-8441', '(31)3277-8447'),
(21, 1, 282, 9, 'Cersam', 'Rua: Boa Vista', 228, '31515-090', '(31)3277-5432', '(31)3277-5434', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UN_ATENDIMENTO_TIPO_ATENDIMENTO`
--

CREATE TABLE IF NOT EXISTS `UN_ATENDIMENTO_TIPO_ATENDIMENTO` (
  `COD_UNIDADE_ATENDIMENTO` int(11) NOT NULL,
  `COD_TIPO_ATENDIMENTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UN_ATENDIMENTO_TIPO_ATENDIMENTO`
--

INSERT INTO `UN_ATENDIMENTO_TIPO_ATENDIMENTO` (`COD_UNIDADE_ATENDIMENTO`, `COD_TIPO_ATENDIMENTO`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(7, 1),
(8, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(21, 1),
(1, 1),
(2, 41),
(3, 41),
(5, 41),
(7, 41),
(8, 41),
(10, 41),
(11, 41),
(12, 41),
(13, 41),
(14, 41),
(15, 41),
(16, 41),
(17, 41),
(18, 41),
(19, 41),
(21, 41),
(1, 41),
(1, 42),
(2, 42),
(3, 42),
(5, 42),
(7, 42),
(8, 42),
(10, 42),
(11, 42),
(12, 42),
(13, 42),
(14, 42),
(15, 42),
(16, 42),
(17, 42),
(18, 42),
(19, 42),
(21, 42),
(4, 1),
(4, 41),
(4, 42),
(9, 1),
(9, 41),
(9, 42),
(6, 1),
(6, 41),
(6, 42);

-- --------------------------------------------------------

--
-- Table structure for table `USUARIO`
--

CREATE TABLE IF NOT EXISTS `USUARIO` (
  `COD_USUARIO` int(11) NOT NULL,
  `DES_LOGIN` varchar(100) NOT NULL,
  `SENHA` varchar(200) NOT NULL,
  `NOM_USUARIO` varchar(200) NOT NULL,
  `DES_EMAIL` varchar(50) NOT NULL,
  `PERFIL` char(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USUARIO`
--

INSERT INTO `USUARIO` (`COD_USUARIO`, `DES_LOGIN`, `SENHA`, `NOM_USUARIO`, `DES_EMAIL`, `PERFIL`) VALUES
(12, 'Gabriel', '5F5CA58F1FFC85827D25D5EAF930212E4D26F38C85665A2F64877EF916B19E12', 'Gabriel', 'gabriel@smfox.com.br', '0'),
(15, 'Amanda', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'amanda', 'amanda@gmail.com', '0'),
(16, 'Pri', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Priscilla', 'priscillaromagnoli@hotmail.com', '0'),
(20, 'admin', 'Np2015', 'administrador', 'admin@c.com', '1'),
(42, 'dmartinsti@gmail.com', 'b7e94be513e96e8c45cd23d162275e5a12ebde9100a425c4ebcdd7fa4dcd897c', 'DiegoMartins', 'dmartinsti@gmail.com', '0'),
(43, 'NewtonPaiva', 'Np2015', 'Newton Paiva', 'newtonpaiva@newtonpaiva.com', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BAIRRO`
--
ALTER TABLE `BAIRRO`
  ADD PRIMARY KEY (`COD_BAIRRO`),
  ADD KEY `FK_BAIRRO_POSSUI_REGIAO` (`COD_REGIAO`),
  ADD KEY `FK_BAIRRO_TEM_CIDADE` (`COD_CIDADE`);

--
-- Indexes for table `CIDADE`
--
ALTER TABLE `CIDADE`
  ADD PRIMARY KEY (`COD_CIDADE`);

--
-- Indexes for table `REGIAO`
--
ALTER TABLE `REGIAO`
  ADD PRIMARY KEY (`COD_REGIAO`);

--
-- Indexes for table `Tarefa`
--
ALTER TABLE `Tarefa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TIPO_ATENDIMENTO`
--
ALTER TABLE `TIPO_ATENDIMENTO`
  ADD PRIMARY KEY (`COD_TIPO_ATENDIMENTO`);

--
-- Indexes for table `TIPO_UNIDADE_ATENDIMENTO`
--
ALTER TABLE `TIPO_UNIDADE_ATENDIMENTO`
  ADD PRIMARY KEY (`COD_TIPO_UNIDADE`);

--
-- Indexes for table `UNIDADE_ATENDIMENTO`
--
ALTER TABLE `UNIDADE_ATENDIMENTO`
  ADD PRIMARY KEY (`COD_UNIDADE_ATENDIMENTO`),
  ADD KEY `FK_REGIAO_TEM_UNI_ATENDIMENTO` (`COD_REGIAO`),
  ADD KEY `FK_UNI_ATENDIMENTO_ESTA_EM_BAIRRO` (`COD_BAIRRO`),
  ADD KEY `FK2E60797F9DE2D2FF` (`COD_TIPO_ATENDIMENTO`);

--
-- Indexes for table `UN_ATENDIMENTO_TIPO_ATENDIMENTO`
--
ALTER TABLE `UN_ATENDIMENTO_TIPO_ATENDIMENTO`
  ADD KEY `FK9F3307BA7230EB83` (`COD_UNIDADE_ATENDIMENTO`),
  ADD KEY `FK9F3307BA9DE2D2FF` (`COD_TIPO_ATENDIMENTO`);

--
-- Indexes for table `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`COD_USUARIO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BAIRRO`
--
ALTER TABLE `BAIRRO`
  MODIFY `COD_BAIRRO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=438;
--
-- AUTO_INCREMENT for table `CIDADE`
--
ALTER TABLE `CIDADE`
  MODIFY `COD_CIDADE` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `REGIAO`
--
ALTER TABLE `REGIAO`
  MODIFY `COD_REGIAO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Tarefa`
--
ALTER TABLE `Tarefa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TIPO_ATENDIMENTO`
--
ALTER TABLE `TIPO_ATENDIMENTO`
  MODIFY `COD_TIPO_ATENDIMENTO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `TIPO_UNIDADE_ATENDIMENTO`
--
ALTER TABLE `TIPO_UNIDADE_ATENDIMENTO`
  MODIFY `COD_TIPO_UNIDADE` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `UNIDADE_ATENDIMENTO`
--
ALTER TABLE `UNIDADE_ATENDIMENTO`
  MODIFY `COD_UNIDADE_ATENDIMENTO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `USUARIO`
--
ALTER TABLE `USUARIO`
  MODIFY `COD_USUARIO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `BAIRRO`
--
ALTER TABLE `BAIRRO`
  ADD CONSTRAINT `FK_BAIRRO_POSSUI_REGIAO` FOREIGN KEY (`COD_REGIAO`) REFERENCES `REGIAO` (`COD_REGIAO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_BAIRRO_TEM_CIDADE` FOREIGN KEY (`COD_CIDADE`) REFERENCES `CIDADE` (`COD_CIDADE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UNIDADE_ATENDIMENTO`
--
ALTER TABLE `UNIDADE_ATENDIMENTO`
  ADD CONSTRAINT `FK2E60797F9DE2D2FF` FOREIGN KEY (`COD_TIPO_ATENDIMENTO`) REFERENCES `TIPO_ATENDIMENTO` (`COD_TIPO_ATENDIMENTO`),
  ADD CONSTRAINT `FK_REGIAO_TEM_UNI_ATENDIMENTO` FOREIGN KEY (`COD_REGIAO`) REFERENCES `REGIAO` (`COD_REGIAO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_UNI_ATENDIMENTO_ESTA_EM_BAIRRO` FOREIGN KEY (`COD_BAIRRO`) REFERENCES `BAIRRO` (`COD_BAIRRO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_UNI_ATENDIMENTO_POSSUI_TIPO` FOREIGN KEY (`COD_TIPO_ATENDIMENTO`) REFERENCES `TIPO_UNIDADE_ATENDIMENTO` (`COD_TIPO_UNIDADE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UN_ATENDIMENTO_TIPO_ATENDIMENTO`
--
ALTER TABLE `UN_ATENDIMENTO_TIPO_ATENDIMENTO`
  ADD CONSTRAINT `FK9F3307BA7230EB83` FOREIGN KEY (`COD_UNIDADE_ATENDIMENTO`) REFERENCES `UNIDADE_ATENDIMENTO` (`COD_UNIDADE_ATENDIMENTO`),
  ADD CONSTRAINT `FK9F3307BA9DE2D2FF` FOREIGN KEY (`COD_TIPO_ATENDIMENTO`) REFERENCES `TIPO_ATENDIMENTO` (`COD_TIPO_ATENDIMENTO`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
