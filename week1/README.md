# Week 1: Text Fundamentals & N-grams
## Getting Started with NLP in R

This guide will help you get started with Week 1 materials and set up your environment for political text analysis.

---

## 📚 What You'll Learn This Week

### Core Concepts
- Text preprocessing and cleaning
- Tokenization: breaking text into words and phrases
- Word frequency analysis
- N-grams: capturing local context (bigrams, trigrams)
- TF-IDF: identifying distinctive terms
- Document-term matrices
- Text visualization techniques

### Key Skills
✅ Clean and preprocess political texts  
✅ Tokenize documents into unigrams, bigrams, and trigrams  
✅ Calculate and visualize word frequencies  
✅ Build document-term matrices  
✅ Compute TF-IDF scores to identify distinctive terms  
✅ Create comparative visualizations across document groups  
✅ Understand when simple frequency-based methods work (and when they don't)  

---

## 📦 Materials Included

1. **week1_text_fundamentals_ngrams.Rmd** - Main notebook
   - Complete tutorial with examples
   - Step-by-step code for all techniques
   - Political science examples throughout
   - Exercises to apply to your own data

2. **generate_sample_data.R** - Sample data generator
   - Creates realistic political text corpus
   - Use if you don't have your own corpus ready
   - Generates 60-100 sample documents

3. **week1_setup_guide.md** - Installation guide
   - R and RStudio installation
   - Package setup
   - Troubleshooting
   - R basics refresher

---

## 📖 Required Reading

- Grimmer, J., & Stewart, B. M. (2013). "Text as Data: The Promise and Pitfalls of Automatic Content Analysis Methods for Political Texts." *Political Analysis*, 21(3), 267-297.

---

## 🚀 Getting Started

### Step 1: Installation (30-60 minutes)

If you haven't already, follow `week1_setup_guide.md` to:
- Install R and RStudio
- Install required packages
- Test your installation

### Step 2: Get Sample Data (5 minutes)

If you don't have your own corpus yet:

```r
# Run the sample data generator
source("generate_sample_data.R")

# This creates sample_political_corpus.csv
# 60 documents with party, topic, and metadata
```

### Step 3: Work Through the Notebook (2-3 hours)

```r
# Open week1_text_fundamentals_ngrams.Rmd in RStudio
# Run each code chunk sequentially
# Read the explanations
# Try modifying the examples
```

### Step 4: Apply to Your Data (3-4 hours)

- Load your own corpus (50+ documents recommended)
- Adapt the code examples
- Complete the exercises
- Create visualizations


---

## 💻 Required Software

- **R** (version 4.3 or higher) - Download from https://cran.r-project.org/
- **RStudio** (latest version) - Download from https://posit.co/download/rstudio-desktop/

## 📦 Required R Packages

```r
# Core text processing
install.packages(c("tidytext", "quanteda", "stringr", "dplyr", "tidyr"))

# Visualization
install.packages(c("ggplot2", "ggraph", "igraph", "wordcloud"))

# Utilities
install.packages(c("rmarkdown", "knitr"))
```

See `week1_setup_guide.md` for detailed installation instructions and troubleshooting.

---

## 📊 Data Requirements

### Minimum Corpus Specifications
- **50+ documents** for Week 1
- CSV format with columns:
  - `doc_id` (unique identifier)
  - `text` (document text)
  - Optional: metadata (date, author, category, etc.)

### Don't Have a Corpus?
Use the provided sample data generator:
```r
source("generate_sample_data.R")
```
This creates a corpus of 60 political documents with party, topic, and temporal metadata.

---

## 📝 What You'll Produce

By the end of Week 1, you'll have:

- [ ] **Data Preparation**
  - Cleaned corpus with 50+ documents
  - Clear metadata for grouping

- [ ] **Frequency Analysis**
  - Unigram frequency tables
  - Top words visualizations
  - Comparison clouds for 2+ groups

- [ ] **N-gram Analysis**
  - Bigram and trigram extraction
  - Network visualization of bigrams
  - 10+ meaningful n-grams identified

- [ ] **TF-IDF Analysis**
  - TF-IDF scores by document and group
  - Visualizations of distinctive terms
  - 5+ distinctive terms per group identified

- [ ] **Written Analysis**
  - How do these methods apply to your research?
  - What did frequency methods reveal?
  - Where did these methods fall short?
  - Connection to Grimmer & Stewart (2013)

---


## 🔧 Troubleshooting

### Common Issues

**Problem:** Packages won't install  
**Solution:** Update R to latest version, try `update.packages()`

**Problem:** RMarkdown won't knit  
**Solution:** Restart RStudio, check pandoc installation

**Problem:** Memory errors with large corpus  
**Solution:** Start with a subset (`corpus %>% slice_sample(n = 50)`)

**Problem:** Text encoding issues  
**Solution:** 
```r
my_data <- read_csv("file.csv", locale = locale(encoding = "UTF-8"))
```

**Problem:** Visualizations not appearing  
**Solution:** Check plot panel in RStudio, ensure packages loaded

See `week1_setup_guide.md` for more detailed troubleshooting.

---

## 📚 Additional Resources

### Learning R
- R for Data Science: https://r4ds.hadley.nz/
- RStudio Education: https://education.rstudio.com/
- RStudio cheatsheets: https://posit.co/resources/cheatsheets/

### Text Analysis in R
- Text Mining with R: https://www.tidytextmining.com/
- Quanteda tutorials: https://tutorials.quanteda.io/

### Getting Help
- Check setup guide first
- Try examples with sample data
- Search error messages
- Read package documentation: `?function_name`

---

## ✅ Ready to Start?

1. ✓ R and RStudio installed
2. ✓ Packages installed and tested
3. ✓ Corpus prepared (or sample data generated)
4. ✓ Read Grimmer & Stewart (2013)

**Begin with:** `week1_text_fundamentals_ngrams.Rmd`

---

## 🎯 Learning Tips

1. **Run code line by line** - Don't just execute entire chunks without reading
2. **Modify examples** - Change parameters to see what happens
3. **Start simple** - Use sample data before your own corpus
4. **Read the paper first** - Grimmer & Stewart provides essential context
5. **Save often** - Ctrl/Cmd+S frequently
6. **Comment your code** - Explain what you're doing
7. **Ask questions** - No question is too basic

**Remember:** Simple methods are powerful! Don't rush to complexity before mastering the fundamentals.