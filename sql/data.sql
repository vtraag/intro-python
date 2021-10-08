SELECT STRING_AGG(author, ';') AS authors, 
    source, pub.pub_year, pub.n_cits, n_refs, title, abstract
  FROM wos_2113..pub
  INNER JOIN wos_2113..pub_detail
    ON pub_detail.ut = pub.ut
  INNER JOIN wos_2113..pub_abstract
    ON pub_abstract.ut = pub.ut
  INNER JOIN wos_2113_classification..clustering
    ON clustering.ut = pub.ut
  INNER JOIN wos_2113..pub_author
    ON pub_author.ut = pub.ut
  INNER JOIN wos_2113..author 
    ON author.author_id = pub_author.author_id
  WHERE cluster_id1 = 116
  GROUP BY source, pub.pub_year, pub.n_cits, n_refs, title, abstract