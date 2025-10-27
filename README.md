# NLP for Political Science: November 2025
## Introduction to NLP in R with Weekly Paper Discussions

**Format:** Weekly R notebooks + paper presentations  
**Platform:** RStudio (local or RStudio Cloud)  
**Duration:** 4 weeks (November)  
**Goal:** Build foundational NLP understanding from basic text analysis to transformer-based classification

---

## Course Philosophy

This month focuses on building intuition for how NLP methods work, starting from simple frequency-based approaches and progressing to state-of-the-art transformers.

---

## Weekly Structure

### Week 1: Text Fundamentals & N-grams
**Core Concepts:** Tokenization, word frequencies, n-grams, text preprocessing

**R Packages:** `tidytext`, `quanteda`, `stringr`, `dplyr`

**What You'll Learn:**
- Tokenizing political texts (unigrams, bigrams, trigrams)
- Building document-term matrices
- TF-IDF weighting
- Visualizing word frequencies and co-occurrences
- Basic text cleaning pipelines

**Practical Tasks:**
```r
# You'll build:
- A unigram frequency analyzer
- A bigram network visualization
- TF-IDF rankings for your corpus
- Comparative word clouds
```

**Weekly Paper:**  
**Grimmer, J., & Stewart, B. M. (2013).** "Text as Data: The Promise and Pitfalls of Automatic Content Analysis Methods for Political Texts." *Political Analysis*, 21(3), 267-297.

**Discussion Focus:** Why simple word counts can be powerful; when they fail; how n-grams capture local context.

**Deliverable:**
- Analyze 50+ documents from your dissertation corpus
- Create TF-IDF visualizations
- Identify most distinctive n-grams for 2+ document groups
- 1-page reflection on paper's relevance to your research

---

### Week 2: Vector Representations & Word Embeddings
**Core Concepts:** Bag of words, word embeddings (Word2Vec, GloVe), semantic similarity

**R Packages:** `text`, `word2vec`, `text2vec`, `quanteda`

**What You'll Learn:**
- Limitations of bag-of-words approaches
- How word embeddings capture semantic meaning
- Training custom embeddings vs. using pre-trained models
- Computing similarity and analogy tasks
- Visualizing embedding spaces with dimensionality reduction

**Practical Tasks:**
```r
# You'll build:
- Document similarity matrices using bag-of-words
- Custom word2vec model on political corpus
- Semantic similarity searches
- Political concept analogies (e.g., "democracy" → "autocracy")
```

**Weekly Paper:**  
**Rodriguez, P. L., & Spirling, A. (2022).** "Word Embeddings: What Works, What Doesn't, and How to Tell the Difference for Applied Research." *Journal of Politics*, 84(1), 101-115.

**Discussion Focus:** When embeddings improve over bag-of-words; pitfalls in political text; how to validate embedding quality.

**Deliverable:**
- Train Word2Vec model on your corpus (min. 500 documents)
- Identify 10+ interesting semantic relationships
- Compare BoW vs. embedding-based document similarity
- Document validation strategy for your embeddings

---

### Week 3: Contextual Embeddings & Document Classification
**Core Concepts:** Context-dependent representations, sentence embeddings, supervised classification

**R Packages:** `text`, `caret`, `glmnet`, `quanteda.textmodels`

**What You'll Learn:**
- Why context matters: "bank" (financial) vs. "bank" (river)
- Using pre-trained contextual models (e.g., via Python interop)
- Feature engineering from embeddings
- Training classifiers (logistic regression, ridge, lasso)
- Cross-validation and performance metrics

**Practical Tasks:**
```r
# You'll build:
- Sentence-level embeddings for your documents
- Multi-class text classifier
- Feature importance analysis
- Confusion matrices and performance reports
```

**Weekly Paper:**  
**Denny, M. J., & Spirling, A. (2018).** "Text Preprocessing For Unsupervised Learning: Why It Matters, When It Misleads, and What to Do About It." *Political Analysis*, 26(2), 168-189.

**Discussion Focus:** How preprocessing choices affect downstream classification; trade-offs between static and contextual embeddings.

**Deliverable:**
- Build 3-class minimum classifier for dissertation categories
- Achieve >70% accuracy on held-out test set
- Compare feature-based vs. embedding-based classification
- Error analysis: where does your classifier fail?

---

### Week 4: Transformer Models & BERT Classification
**Core Concepts:** Attention mechanisms, BERT architecture, fine-tuning, transfer learning

**R Packages:** `text` (connects to transformers), `reticulate` (Python interop)

**What You'll Learn:**
- How transformers differ from previous methods
- BERT's bidirectional context understanding
- Using pre-trained BERT for classification
- When to use zero-shot vs. fine-tuning
- Interpreting model predictions

**Practical Tasks:**
```r
# You'll build:
- BERT-based document classifier
- Zero-shot classification pipeline
- Comparison of all methods (Week 1-4)
- Final classification system for dissertation
```

**Weekly Paper:**  
**Ziems, C., Held, W., Shaikh, O., Chen, J., Zhang, Z., & Yang, D. (2024).** "Can Large Language Models Transform Computational Social Science?" *Computational Linguistics*, 50(1), 237-291.

**Discussion Focus:** Strengths and limitations of LLMs in political science; ethical considerations; reproducibility challenges; when simpler methods suffice.

**Deliverable:**
- BERT classifier on your dissertation data (200+ documents)
- Methods comparison table (accuracy, speed, interpretability)
- Final processed dataset ready for causal analysis
- Research memo: which method for which dissertation chapter?

---

## Progressive Skill Building

| Week | Method | Key Insight | Limitation |
|------|--------|-------------|------------|
| 1 | N-grams | Local context, simple & interpretable | Sparse, no semantics |
| 2 | Word2Vec | Semantic similarity across corpus | Static, one meaning per word |
| 3 | Contextual embeddings | Word meaning depends on context | Requires more computation |
| 4 | BERT | Bidirectional understanding | Complex, harder to interpret |

---

## Technical Setup

### Required R Packages
```r
# Core text processing
install.packages(c("tidytext", "quanteda", "stringr", "dplyr", "tidyr"))

# Word embeddings
install.packages(c("text2vec", "word2vec"))

# Advanced NLP (requires Python setup)
install.packages(c("text", "reticulate"))

# Machine learning
install.packages(c("caret", "glmnet", "quanteda.textmodels"))

# Visualization
install.packages(c("ggplot2", "ggraph", "igraph", "wordcloud"))
```

### For BERT (Week 4)
The `text` package provides R interface to Python transformers:
```r
library(text)
textrpp_install()  # One-time setup
```


## Additional Papers by Week

### Week 1 Supplementary:
- Benoit, K., et al. (2018). "quanteda: An R package for the quantitative analysis of textual data." *Journal of Open Source Software*, 3(30), 774.
- Young, L., & Soroka, S. (2012). "Affective News: The Automated Coding of Sentiment in Political Texts." *Political Communication*, 29(2), 205-231.

### Week 2 Supplementary:
- Rheault, L., & Cochrane, C. (2020). "Word Embeddings for the Analysis of Ideological Placement in Parliamentary Corpora." *Political Analysis*, 28(1), 112-133.
- Mikolov, T., et al. (2013). "Efficient Estimation of Word Representations in Vector Space." *arXiv preprint*.

### Week 3 Supplementary:
- Watanabe, K., & Zhou, Y. (2022). "Theory-Driven Analysis of Large Corpora: Semisupervised Topic Classification of the UN Speeches." *Social Science Computer Review*, 40(2), 346-366.
- Peterson, A., & Spirling, A. (2018). "Classification Accuracy as a Substantive Quantity of Interest." *Political Analysis*, 26(3), 250-266.

### Week 4 Supplementary:
- Devlin, J., et al. (2019). "BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding." *NAACL-HLT*.
- Törnberg, P. (2023). "ChatGPT-4 Outperforms Experts and Crowd Workers in Annotating Political Twitter Messages with Zero-Shot Learning." *arXiv preprint*.
