# Sample Political Text Data Generator
# Week 1 Supplementary Material
# Use this if you don't have your dissertation corpus ready

library(dplyr)
library(readr)

# Generate larger sample dataset of political speeches/statements
generate_sample_corpus <- function(n_docs = 60) {
  
  # Sample texts inspired by actual political discourse
  democrat_economy <- c(
    "We must invest in infrastructure and create millions of good-paying jobs for working families across America",
    "Economic recovery requires supporting small businesses and ensuring fair wages for all workers",
    "We need to strengthen the middle class through tax fairness and economic opportunity",
    "Creating clean energy jobs will drive economic growth while protecting our planet",
    "Healthcare costs are crushing families and we must make quality care affordable for everyone"
  )
  
  democrat_social <- c(
    "Protecting voting rights is essential to preserving our democratic institutions",
    "We must defend civil rights and fight discrimination in all its forms",
    "Education is the key to opportunity and we need to invest in our schools and teachers",
    "Immigration reform should reflect our values of compassion while maintaining security",
    "Women's reproductive rights must be protected as a fundamental freedom"
  )
  
  republican_economy <- c(
    "Lower taxes and reduced regulations will unleash economic growth and job creation",
    "Free market solutions drive innovation and prosperity better than government intervention",
    "We must reduce the national debt and ensure fiscal responsibility for future generations",
    "Energy independence through domestic production will strengthen our economy and security",
    "Small government and individual liberty are the foundations of American prosperity"
  )
  
  republican_security <- c(
    "National security must remain our top priority in an increasingly dangerous world",
    "We need strong borders to protect American citizens and maintain law and order",
    "Supporting our military and veterans is essential to defending freedom",
    "Law and order must be restored in our communities through supporting police",
    "Second Amendment rights are fundamental to American liberty and must be protected"
  )
  
  bipartisan_texts <- c(
    "We must work together across party lines to address the opioid crisis",
    "Infrastructure investment will create jobs and improve quality of life nationwide",
    "Veterans deserve our full support and quality healthcare services",
    "American innovation and competitiveness depend on STEM education",
    "Rural communities need better broadband access for economic development"
  )
  
  # Create balanced dataset
  set.seed(123)
  
  # Calculate how many of each type
  n_dem_econ <- round(n_docs * 0.20)
  n_dem_soc <- round(n_docs * 0.20)
  n_rep_econ <- round(n_docs * 0.20)
  n_rep_sec <- round(n_docs * 0.20)
  n_bipart <- n_docs - (n_dem_econ + n_dem_soc + n_rep_econ + n_rep_sec)
  
  corpus <- tibble(
    doc_id = paste0("doc_", sprintf("%03d", 1:n_docs)),
    text = c(
      sample(democrat_economy, n_dem_econ, replace = TRUE),
      sample(democrat_social, n_dem_soc, replace = TRUE),
      sample(republican_economy, n_rep_econ, replace = TRUE),
      sample(republican_security, n_rep_sec, replace = TRUE),
      sample(bipartisan_texts, n_bipart, replace = TRUE)
    ),
    party = c(
      rep("Democrat", n_dem_econ + n_dem_soc),
      rep("Republican", n_rep_econ + n_rep_sec),
      rep("Bipartisan", n_bipart)
    ),
    topic = c(
      rep("Economy", n_dem_econ),
      rep("Social Policy", n_dem_soc),
      rep("Economy", n_rep_econ),
      rep("Security", n_rep_sec),
      rep("Bipartisan", n_bipart)
    ),
    year = sample(2020:2024, n_docs, replace = TRUE),
    speaker_type = sample(c("Senator", "Representative", "Governor", "President"),
                         n_docs, replace = TRUE, 
                         prob = c(0.4, 0.4, 0.15, 0.05))
  )
  
  return(corpus)
}

# Generate and save sample corpus
sample_corpus <- generate_sample_corpus(60)

# Save to CSV
write_csv(sample_corpus, "sample_political_corpus.csv")

cat("Generated sample corpus with", nrow(sample_corpus), "documents\n")
cat("Saved to: sample_political_corpus.csv\n\n")

# Display summary statistics
cat("Corpus Summary:\n")
cat("==============\n")
table(sample_corpus$party) %>% print()
cat("\n")
table(sample_corpus$topic) %>% print()
cat("\n")
table(sample_corpus$year) %>% print()

# Show first few rows
cat("\nFirst 5 documents:\n")
print(head(sample_corpus, 5))


# Alternative: Generate corpus with more variation
generate_extended_corpus <- function(n_docs = 100) {
  
  # More diverse political statements
  statements <- list(
    
    # Climate and Environment
    climate = c(
      "Climate change requires immediate action and international cooperation to prevent catastrophic outcomes",
      "We must transition to renewable energy sources to protect our environment for future generations",
      "Environmental regulations should balance economic growth with conservation efforts",
      "Green technology investment will create jobs while addressing environmental challenges"
    ),
    
    # Healthcare
    healthcare = c(
      "Universal healthcare access is a fundamental right that government must guarantee",
      "Market-based healthcare solutions provide choice and quality while controlling costs",
      "We need to lower prescription drug prices and make insurance more affordable",
      "Healthcare reform must protect pre-existing condition coverage for all Americans"
    ),
    
    # Education  
    education = c(
      "Public education funding is critical for equal opportunity and social mobility",
      "School choice and competition improve educational outcomes for all students",
      "Student loan debt relief will help millions of Americans achieve financial security",
      "Teacher pay must be increased to attract and retain quality educators"
    ),
    
    # Immigration
    immigration = c(
      "Immigration reform must provide a path to citizenship for undocumented residents",
      "Border security is essential to maintaining sovereignty and rule of law",
      "We are a nation of immigrants and must maintain welcoming policies",
      "Legal immigration strengthens our economy and enriches our culture"
    ),
    
    # Trade and Economy
    trade = c(
      "Free trade agreements expand markets and create economic opportunities",
      "Trade deals must protect American workers and manufacturing jobs",
      "Global economic cooperation benefits all nations through shared prosperity",
      "We need fair trade that prioritizes American interests and workers"
    ),
    
    # Technology
    technology = c(
      "Technology sector regulation must protect privacy while fostering innovation",
      "Artificial intelligence development requires ethical guidelines and oversight",
      "Digital infrastructure investment is essential for twenty-first century competitiveness",
      "Tech companies must be held accountable for content and data practices"
    )
  )
  
  # Randomly sample from categories
  set.seed(456)
  
  corpus <- tibble(
    doc_id = paste0("doc_", sprintf("%03d", 1:n_docs)),
    text = unlist(lapply(1:n_docs, function(i) {
      category <- sample(names(statements), 1)
      sample(statements[[category]], 1)
    })),
    year = sample(2018:2024, n_docs, replace = TRUE),
    month = sample(1:12, n_docs, replace = TRUE)
  )
  
  # Add derived features
  corpus <- corpus %>%
    mutate(
      quarter = paste0("Q", ceiling(month/3)),
      period = ifelse(year < 2021, "Pre-Biden", "Biden Era"),
      doc_length = nchar(text)
    )
  
  return(corpus)
}

# Generate extended corpus
extended_corpus <- generate_extended_corpus(100)
write_csv(extended_corpus, "extended_political_corpus.csv")

cat("\n\nGenerated extended corpus with", nrow(extended_corpus), "documents\n")
cat("Saved to: extended_political_corpus.csv\n")