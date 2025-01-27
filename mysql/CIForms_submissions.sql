--
-- Table structure for table `CIForms_submissions`
--

CREATE TABLE IF NOT EXISTS /*_*/CIForms_submissions (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `data` blob NOT NULL,
  `shown` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `jsondata`blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CIForms_submissions`
--
ALTER TABLE /*_*/CIForms_submissions
  ADD PRIMARY KEY (`id`);

ALTER TABLE /*_*/CIForms_submissions ADD `username` VARCHAR(255) NULL AFTER `page_id`;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CIForms_submissions`
--
ALTER TABLE /*_*/CIForms_submissions
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
