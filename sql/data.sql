DROP TABLE IF EXISTS #pubs
SELECT
  paper.paper_id,
  authors.authors, journal_title = journal.display_name, pub_year = paper.[year], 
  n_cits = paper.citation_count, n_refs = paper.reference_count, 
  paper.paper_title, paper_abstract.abstract
  INTO #pubs
FROM mag_2019dec_classification..clustering
JOIN mag_2019dec..paper
  ON paper.paper_id = clustering.paper_id
LEFT JOIN mag_2019dec..paper_abstract
  ON paper_abstract.paper_id = paper.paper_id
LEFT JOIN mag_2019dec..journal
  ON paper.journal_id = journal.journal_id
LEFT JOIN (SELECT a.paper_id, authors = STRING_AGG(b.display_name, '; ')
           FROM mag_2019dec..paper_author AS a
           INNER JOIN mag_2019dec..author AS b
             ON a.author_id = b.author_id
           GROUP BY a.paper_id) AS authors
  ON authors.paper_id = paper.paper_id
WHERE cluster_id1 = 198
ORDER BY pub_year, journal_title, paper_title, authors

DROP TABLE IF EXISTS #citations
SELECT 
    pub_citing.paper_id AS citing_paper_id,
    pub_cited.paper_id AS cited_paper_id
  INTO #citations
  FROM mag_2019dec..paper_reference
  INNER JOIN #pubs AS pub_citing
    ON pub_citing.paper_id = paper_reference.paper_id
  INNER JOIN #pubs AS pub_cited
    ON pub_cited.paper_id = paper_reference.paper_reference_id