# Week 2: Vector Representations & Word Embeddings
## From Counting to Meaning

This guide will help you get started with Week 2 materials on word embeddings and semantic analysis.

---

## 📚 What You'll Learn This Week

### Core Concepts
- Limitations of bag-of-words approaches
- Distributional semantics: "You shall know a word by the company it keeps"
- Word embeddings: dense vector representations of words
- Word2Vec: Skip-gram and CBOW algorithms
- Semantic similarity and distance metrics
- Word analogies: vector arithmetic for relationships
- Document embeddings: from words to documents
- Validation strategies for embeddings

### Key Skills
✅ Understand when bag-of-words falls short  
✅ Train custom Word2Vec models on your corpus  
✅ Use pre-trained embeddings (GloVe)  
✅ Compute semantic similarity between words  
✅ Perform analogy tasks (e.g., "democracy" - "elections" + "control" = ?)  
✅ Create document embeddings and compare documents  
✅ Visualize embedding spaces with PCA and t-SNE  
✅ Validate embedding quality  
✅ Compare bag-of-words vs. embedding-based approaches  

---

## 📦 Materials Included

1. **week2_word_embeddings.Rmd** - Main notebook
   - Complete tutorial with examples
   - Word2Vec training from scratch
   - Semantic similarity and analogies
   - Visualization techniques
   - BoW vs. embeddings comparison
   - Exercises for your own data

2. **generate_sample_data.R** - Sample data generator
   - Same as Week 1 (generates 500+ documents)
   - Larger corpus recommended for embeddings

---

## 📖 Required Reading

- Rodriguez, P. L., & Spirling, A. (2022). "Word Embeddings: What Works, What Doesn't, and How to Tell the Difference for Applied Research." *Journal of Politics*, 84(1), 101-115.

---

## 🚀 Getting Started

### Step 1: Review Week 1 (30 minutes)

Make sure you understand:
- Bag-of-words representation
- TF-IDF weighting
- Document similarity with cosine distance

These concepts build directly into embeddings.

### Step 2: Install New Packages (10-15 minutes)

```r
# Install new packages for Week 2
install.packages(c(
  "word2vec",      # Train Word2Vec models
  "text2vec",      # Alternative text vectorization
  "ggrepel",       # Better text labels
  "Rtsne",         # t-SNE dimensionality reduction
  "widyr",         # Pairwise operations
  "proxy"          # Distance metrics
))
```

### Step 3: Expand Your Corpus (if needed)

Word embeddings work better with more data:
- **Minimum:** 500 documents
- **Better:** 1000+ documents
- **Ideal:** 5000+ documents (Rodriguez & Spirling recommendation)

If your corpus is smaller:
```r
# Generate larger sample corpus
source("generate_sample_data.R")
political_corpus <- generate_extended_corpus(500)
```

### Step 4: Work Through the Notebook (3-4 hours)

```r
# Open week2_word_embeddings.Rmd in RStudio
# Run each code chunk sequentially
# Pay special attention to parameter choices
# Try the validation examples
```

### Step 5: Apply to Your Data (4-5 hours)

- Train Word2Vec on your corpus
- Validate embedding quality
- Test political analogies
- Compare to bag-of-words baseline
- Create visualizations

---

## 💻 Required Software

- **R** (version 4.3 or higher)
- **RStudio** (latest version)
- **Sufficient RAM** (embeddings can be memory-intensive; 8GB+ recommended)

## 📦 Required R Packages

```r
# New for Week 2
install.packages(c("word2vec", "text2vec", "ggrepel", "Rtsne", "widyr", "proxy"))

# From Week 1 (should already be installed)
# tidytext, quanteda, dplyr, ggplot2, stringr
```

---

## 📊 Data Requirements

### Corpus Specifications
- **500+ documents** for Week 2 (more is better!)
- **1000+ recommended** for reliable embeddings
- Same CSV format as Week 1:
  - `doc_id` (unique identifier)
  - `text` (document text)
  - Optional: metadata

### Why More Documents?

Embeddings learn from co-occurrence patterns. More documents = more patterns = better embeddings.

**If your corpus is small (<500 docs):**
- Consider using pre-trained embeddings (GloVe)
- Combine with related corpora
- Focus validation on pre-trained embeddings
- This is a valid choice - discuss in your report!

---

## 📝 What You'll Produce

By the end of Week 2, you'll have:

- [ ] **Trained Word2Vec Model**
  - Model trained on 500+ documents
  - Parameters documented (dim, window, iter)
  - Vocabulary size reported

- [ ] **Semantic Analysis**
  - 10+ interesting word similarity pairs
  - 5+ political analogies tested
  - Substantive interpretation of findings

- [ ] **Validation Results**
  - Intrinsic validation (word pair similarities)
  - Qualitative validation (nearest neighbors review)
  - Extrinsic validation (downstream task)
  - Discussion of where embeddings work/fail

- [ ] **Comparison Analysis**
  - BoW document similarity computed
  - Embedding document similarity computed
  - Differences analyzed
  - Trade-offs discussed

- [ ] **Visualizations**
  - PCA or t-SNE plot of embedding space
  - Political concepts labeled
  - Clusters interpreted

- [ ] **Written Report (2 pages)**
  - How embeddings improve over BoW
  - Semantic relationships discovered
  - Connection to Rodriguez & Spirling
  - Limitations of your embeddings
  - Pre-trained vs. custom decision

---

## 🔧 Troubleshooting

### Common Issues

**Problem:** Word2Vec training is very slow  
**Solution:** 
- Reduce `iter` parameter to 10-15
- Reduce `dim` to 50
- Use smaller corpus for initial testing
- Increase `threads` parameter

**Problem:** Most words not in vocabulary  
**Solution:**
- Lower `min_count` parameter (try `min_count = 2`)
- Check if preprocessing is too aggressive
- Corpus may be too small

**Problem:** Analogies don't make sense  
**Solution:**
- This is common and expected!
- Need larger, more diverse corpus
- Some relationships may not be captured
- Document these failures - they're interesting!

**Problem:** t-SNE plot is messy with overlapping labels  
**Solution:**
- Adjust `perplexity` parameter (try 5-30)
- Use fewer words in visualization (30-50)
- Try UMAP instead of t-SNE
- Use `ggrepel` package for better labels

**Problem:** "Cannot allocate vector" memory error  
**Solution:**
- Work with smaller corpus initially
- Reduce embedding dimensions
- Close other applications
- Use `gc()` to free memory

**Problem:** Embeddings perform worse than bag-of-words  
**Solution:**
- This happens! Report it honestly
- May indicate corpus too small
- May indicate exact matches matter more
- This is a valid research finding

---

## 📚 Additional Resources

### Understanding Word Embeddings
- Word2Vec original paper: Mikolov et al. (2013)
- GloVe paper: Pennington et al. (2014)
- Text Mining with R (Ch. on word embeddings)

### Pre-trained Embeddings
- GloVe embeddings: https://nlp.stanford.edu/projects/glove/
- fastText embeddings: https://fasttext.cc/docs/en/english-vectors.html

### R Documentation
- word2vec package: https://cran.r-project.org/web/packages/word2vec/
- text2vec package: https://cran.r-project.org/web/packages/text2vec/

### Political Science Applications
- Rheault & Cochrane (2020) - Ideological placement
- Rodriguez & Spirling (2022) - What works and doesn't
- Kozlowski et al. (2019) - Cultural dimensions

---

## ✅ Ready to Start?

Before beginning Week 2:

1. ✓ Week 1 materials completed and understood
2. ✓ New packages installed and tested
3. ✓ Corpus expanded to 500+ documents (if possible)
4. ✓ Read Rodriguez & Spirling (2022)
5. ✓ Understand bag-of-words limitations

**Begin with:** `week2_word_embeddings.Rmd`

---

## 🎯 Learning Tips

1. **Corpus size matters** - Bigger is genuinely better for embeddings
2. **Start with defaults** - dim=100, window=5 are good starting points
3. **Validate extensively** - Multiple strategies catch different issues
4. **Compare to baseline** - Always show how embeddings improve over BoW
5. **Read nearest neighbors** - Don't just look at scores, read the words
6. **Expect failures** - Not all analogies work; document these!
7. **Connect to theory** - What do embeddings reveal about political language?

**Remember Rodriguez & Spirling:** Embeddings are powerful, but not magic. Validate thoroughly and report honestly!

---

## 🔑 Key Concepts to Master

### When Embeddings Help
- Finding semantically similar documents (not just word overlap)
- Handling synonym variation
- Discovering concept relationships
- Working with diverse vocabulary

### When Embeddings Don't Help
- Small corpus (<500 documents)
- Exact keyword matching is important
- Interpretability is critical
- Domain-specific meanings not in training data

### Validation is Essential
- No single validation method is sufficient
- Combine intrinsic, extrinsic, and qualitative approaches
- Always check against substantive knowledge
- Report limitations honestly

---

## 💡 What Makes Good Week 2 Work?

✓ **Trains** embeddings on adequate corpus (500+ docs)  
✓ **Validates** using multiple strategies  
✓ **Compares** to bag-of-words baseline  
✓ **Identifies** meaningful semantic patterns  
✓ **Discusses** both successes and failures  
✓ **Connects** to Rodriguez & Spirling's insights  
✓ **Interprets** results substantively, not just technically  
✓ **Reports** limitations and caveats honestly  

---

**Ready to explore semantic space? Open `week2_word_embeddings.Rmd` and begin!**

Good luck! 🚀📊