
# Week 2: Vector Representations & Word Embeddings
## Course Materials Package

This package contains everything needed for Week 2 of "NLP for Political Science: November 2025"

---

## 📚 Contents Overview

1. **week2_word_embeddings.Rmd** - Main notebook
   - Complete tutorial on word embeddings
   - Training Word2Vec models
   - Semantic similarity and analogies
   - Visualization techniques (PCA, t-SNE)
   - BoW vs. embeddings comparison
   - Connection to Rodriguez & Spirling (2022)
   - Exercises with your own data

---

## 🎯 Learning Objectives

By the end of Week 2, students will:

✅ Understand bag-of-words limitations  
✅ Train Word2Vec models on political corpora  
✅ Compute semantic similarity between words and documents  
✅ Perform word analogy tasks  
✅ Visualize embedding spaces  
✅ Compare BoW vs. embedding-based approaches  
✅ Validate embedding quality using multiple strategies  
✅ Apply Rodriguez & Spirling's validation framework  

---

## 📖 Required Reading

**Primary:**
- Rodriguez, P. L., & Spirling, A. (2022). "Word Embeddings: What Works, What Doesn't, and How to Tell the Difference for Applied Research." *Journal of Politics*, 84(1), 101-115.

---

## 🚀 Quick Start Guide

### For Students (First Time)

1. **Review Week 1** (30 minutes)
   - Refresh bag-of-words concepts
   - Review TF-IDF and document similarity
   - Have your corpus ready (500+ documents recommended)

2. **Install New Packages** (10-15 minutes)
   ```r
   install.packages(c(
     "word2vec",
     "text2vec", 
     "ggrepel",
     "Rtsne",
     "uwot",
     "widyr",
     "proxy"
   ))
   ```

3. **Work Through Notebook** (3-4 hours)
   ```r
   # Open week2_word_embeddings.Rmd
   # Run each code chunk
   # Read explanations carefully
   # Complete exercises
   ```

4. **Apply to Your Data** (4-5 hours)
   - Train Word2Vec on your corpus (500+ docs)
   - Validate embedding quality
   - Compare to BoW baseline
   - Complete all deliverables

---

## 💻 Technical Requirements

### R Packages

**New for Week 2:**
- `word2vec` - Train Word2Vec models
- `text2vec` - Alternative text vectorization
- `ggrepel` - Better text labels in plots
- `Rtsne` - t-SNE dimensionality reduction
- `widyr` - Pairwise operations
- `proxy` - Distance/similarity metrics

**From Week 1:**
- `tidytext`, `quanteda`, `dplyr`, `ggplot2`

### Data Requirements

**Minimum corpus specifications:**
- **500+ documents** for Week 2 (more is better!)
- **1000+ for reliable embeddings** (Rodriguez & Spirling recommend 5000+)
- CSV format with text column
- Rich vocabulary (diverse topics)

**Note:** If your corpus is <500 documents, consider:
1. Using pre-trained embeddings (GloVe)
2. Combining with related corpora
3. Focusing more on validation with pre-trained embeddings

---

## 📊 Deliverables

Students must submit:

### 1. Trained Word2Vec Model
- [ ] Minimum 500 documents used
- [ ] Model parameters documented (dim, window, iter)
- [ ] Vocabulary size reported
- [ ] Sample nearest neighbors shown

### 2. Semantic Analysis
- [ ] 10+ interesting word similarity pairs identified
- [ ] 5+ word analogies computed and interpreted
- [ ] Substantive analysis of what model learned

### 3. Validation Results
- [ ] Intrinsic validation: word pair similarities
- [ ] Qualitative validation: expert review of neighbors
- [ ] Extrinsic validation: document similarity comparison
- [ ] Discussion of where embeddings succeed/fail

### 4. BoW vs. Embeddings Comparison
- [ ] Document similarity computed both ways
- [ ] Correlation between methods reported
- [ ] Cases of agreement/disagreement analyzed
- [ ] Trade-offs discussed

### 5. Visualizations
- [ ] PCA or t-SNE plot of embedding space
- [ ] Political concepts labeled and interpreted
- [ ] Clusters analyzed substantively

### 6. Written Report (2 pages)
Address:
- How embeddings improve over BoW for your research
- What semantic relationships discovered
- How Rodriguez & Spirling's insights apply
- Limitations of your embeddings
- Pre-trained vs. custom embeddings: which is better for your case?

---

## 🎓 Assessment Criteria

| Component | Weight | Excellent (A) | Good (B) | Needs Work (C) |
|-----------|--------|---------------|----------|----------------|
| Model Training | 20% | 500+ docs, justified parameters | 300-500 docs, standard params | <300 docs, poor params |
| Semantic Analysis | 20% | 10+ insights, deep interpretation | Adequate findings | Surface-level |
| Validation | 25% | Multiple strategies, thorough | Basic validation | Minimal checking |
| Comparison | 20% | Insightful BoW vs. emb analysis | Adequate comparison | Superficial |
| Report | 15% | Connects R&S, critical, clear | Addresses paper | Generic |

---

## 📈 Typical Week 2 Schedule

### Before Session 1 (Required)
- Install new R packages
- Read Rodriguez & Spirling (2022)
- Ensure corpus has 500+ documents
- Review Week 1 concepts

### Session 1 (2 hours)
- Review BoW limitations
- Introduction to distributional semantics
- Word2Vec theory and intuition
- Train first model together

### Between Sessions
- Work through notebook Part 1-6
- Train model on own corpus
- Start validation tests

### Session 2 (2 hours)
- Semantic similarity and analogies
- Visualization techniques
- Document embeddings
- Q&A on training issues

### Between Sessions  
- Complete BoW comparison
- Finish all visualizations
- Draft report

### Session 3 (2 hours)
- Discussion of Rodriguez & Spirling
- Validation strategies deep dive
- Present interesting findings
- Troubleshoot issues

### After Session 3
- Complete all deliverables
- Finalize 2-page report
- Submit by deadline

**Total Student Time:** 12-16 hours

---

## 🔧 Troubleshooting

### Common Issues

**Problem:** "word2vec training is very slow"  
**Solution:** 
- Reduce iter to 10-15
- Reduce dim to 50
- Use smaller corpus for testing
- Increase threads parameter

**Problem:** "Most words not in vocabulary"  
**Solution:**
- Lower min_count parameter (try min_count=2)
- Check preprocessing (too aggressive?)
- Corpus may be too small

**Problem:** "Analogies don't make sense"  
**Solution:**
- This is common! Not all analogies work
- Need large, diverse corpus
- Some relationships aren't captured
- Document failures in report

**Problem:** "t-SNE plot is messy/overlapping"  
**Solution:**
- Adjust perplexity (try 5-30 range)
- Use fewer words (top 30-50)
- Try UMAP instead of t-SNE
- Use ggrepel for better labels

**Problem:** "Embeddings worse than BoW"  
**Solution:**
- This happens! Report it honestly
- May indicate corpus too small
- May indicate exact matches matter more than semantics
- This is a valid research finding

### Getting Help

1. Check week2_solutions_guide.Rmd
2. Search course forum
3. Post question with:
   - Corpus size
   - Parameters used
   - Error message
   - What you've tried
4. Attend office hours
5. Form study group

---

## 🔗 Related Materials

### Within This Course
- **Week 1:** Frequency-based methods (BoW, TF-IDF)
- **Week 3:** Contextual embeddings (BERT, context-dependent)
- **Week 4:** Fine-tuning transformers

### External Resources
- Word2Vec original paper: Mikolov et al. (2013)
- GloVe embeddings: Stanford NLP
- fastText: Facebook AI Research
- Pre-trained embeddings download sites

---

## 📝 Key Concepts

### Core Principles (Rodriguez & Spirling)

1. **Embeddings are NOT truth**
   - They reflect training data patterns
   - Can encode biases and stereotypes
   - Require validation against knowledge

2. **Validation is essential**
   - Multiple strategies needed
   - Intrinsic, extrinsic, qualitative
   - Never report without validation

3. **Context matters**
   - Domain-specific meanings
   - "Liberal" in US vs. Europe
   - "Party" as political vs. social

4. **Trade-offs exist**
   - Embeddings vs. BoW
   - Custom vs. pre-trained
   - Interpretability vs. semantic depth

### When Embeddings Help

✅ Finding semantically similar documents  
✅ Handling synonym variation  
✅ Discovering concept relationships  
✅ Working with diverse vocabulary  

### When Embeddings Don't Help

❌ Small corpus (<500 docs)  
❌ Exact keyword matching needed  
❌ Highly interpretable features required  
❌ Strong biases in training data  

---

## 🎯 Connection to Research

### How Embeddings Apply to Political Science

**Measuring Ideology:**
- Position of politicians based on speech embeddings
- Track ideological drift over time
- Compare party platforms semantically

**Content Analysis:**
- Find similar legislative bills
- Cluster policy documents
- Identify frames across sources

**Comparative Politics:**
- Cross-national concept comparison
- Translation-invariant analysis
- Cultural dimensions

**Historical Analysis:**
- Meaning shifts over time
- Concept evolution
- Discourse changes

---

## 📋 Pre-Session Checklist

Before Week 2 starts:

- [ ] Week 1 materials reviewed
- [ ] New packages installed and tested
- [ ] Corpus expanded to 500+ documents (if needed)
- [ ] Rodriguez & Spirling (2022) read with notes
- [ ] Research questions refined
- [ ] Calendar blocked for ~15 hours of work

---

## 🎯 Success Tips

1. **Corpus Size Matters**
   - Bigger is better for embeddings
   - 500 minimum, 1000+ preferred
   - Quality > quantity though

2. **Start with Defaults**
   - dim=100, window=5 are good starting points
   - Only adjust if you have good reason
   - Document all parameter choices

3. **Validate Extensively**
   - Don't skip validation!
   - Use multiple strategies
   - Compare to substantive knowledge

4. **Compare to Baseline**
   - Always show BoW comparison
   - Embeddings should improve something
   - If not, explain why (still valid!)

5. **Read Your Neighbors**
   - Don't just look at similarity scores
   - Actually read what "similar" words are
   - Do they make substantive sense?

6. **Document Failures**
   - Not everything works!
   - Failed analogies are interesting
   - Be honest about limitations

7. **Connect to Theory**
   - What do embeddings tell you about your domain?
   - How do findings relate to literature?
   - What new research questions emerge?

---

## 📚 Extended Reading

### For Deeper Understanding

**Embeddings Theory:**
- Jurafsky & Martin textbook (Ch. 6)
- Word2Vec parameter guide
- GloVe paper (Pennington et al.)

**Political Science Applications:**
- Rheault & Cochrane (2020) - Ideological placement
- Rodman (2020) - Timely intervention with text
- Historical embeddings - Hamilton et al.

**Validation:**
- Rodriguez & Spirling (2022) - REQUIRED
- SimLex-999 dataset
- Word similarity benchmarks

**Critical Perspectives:**
- Bender & Koller (2020) - Meaning and understanding
- Bolukbasi et al. (2016) - Gender bias in embeddings
- Garg et al. (2018) - Historical stereotypes

---

## 🎤 Discussion Questions

For class discussion or reflection:

1. **Validity:** How can we tell if embeddings capture "real" semantic relationships vs. statistical artifacts?

2. **Bias:** If embeddings encode stereotypes, should we "debias" them or study the biases?

3. **Interpretation:** Are embeddings more or less interpretable than BoW? What are the trade-offs?

4. **Generalization:** When do domain-specific embeddings beat pre-trained general ones?

5. **Theory:** What can embeddings tell us about political concepts that we didn't already know?

---

## 🔄 Week-to-Week Progression

**Week 1 → Week 2:**
- From counting to meaning
- From sparse to dense representations
- From exact matches to semantic similarity

**Week 2 → Week 3:**
- From static to contextual embeddings
- From one meaning per word to context-dependent
- From Word2Vec to BERT

**Key Evolution:**
- Increasing sophistication
- Increasing data requirements
- Decreasing interpretability
- (Usually) increasing performance

---

## ⚠️ Important Warnings

### What NOT to Do

1. **Don't skip validation**
   - "I trained embeddings" is not enough
   - Must show they work for your task

2. **Don't over-claim**
   - Embeddings show patterns, not truth
   - "Discovered" vs. "found in training data"

3. **Don't ignore BoW**
   - Sometimes simpler is better
   - Always compare to baseline

4. **Don't use black box**
   - Understand your parameters
   - Know what skip-gram vs. CBOW means

5. **Don't trust pre-trained blindly**
   - May not fit your domain
   - May encode unwanted biases
   - Validate for your context

---

## 💬 FAQs

**Q: How large does my corpus need to be?**  
A: 500 minimum, 1000+ better, 5000+ ideal (R&S). Use pre-trained if smaller.

**Q: Skip-gram or CBOW?**  
A: Skip-gram better for rare words and small corpus. CBOW faster for large corpus.

**Q: What dimension should I use?**  
A: 50-100 for smaller corpus, 200-300 for large. Higher needs more data.

**Q: My analogies don't work. Is something wrong?**  
A: Probably not! Many analogies fail, especially with small corpus. Document it.

**Q: Should I use pre-trained or train my own?**  
A: Depends on domain specificity and corpus size. Try both and compare!

**Q: How do I know if embeddings are good?**  
A: Multiple validation: word pairs, nearest neighbors, downstream tasks, expert review.

**Q: Can embeddings replace BoW completely?**  
A: No! Each has strengths. Sometimes BoW is better. Always compare.

---

## 📧 Contact Information

**Instructor:**  
[Name]  
[Email]  
Office Hours: [Times]

**Teaching Assistant:**  
[Name]  
[Email]  

**Course Forum:**  
[Link]

---

## 🏆 What "Excellent" Looks Like

An A-level Week 2 submission:

✓ Trains on 500+ documents with justified parameters  
✓ Validates using 3+ strategies thoroughly  
✓ Identifies 10+ meaningful semantic relationships  
✓ Compares BoW vs. embeddings with insight  
✓ Creates clear, labeled visualizations  
✓ Writes 2-page report connecting to Rodriguez & Spirling  
✓ Discusses both successes and failures honestly  
✓ Proposes specific next steps for research  
✓ Code is well-commented and reproducible  

---

**Ready to begin? Start with `week2_word_embeddings.Rmd`!**

Remember Rodriguez & Spirling's wisdom: "The best embedding is not always the most complex one, but the one that fits your research question and validates well." 📊🔬
