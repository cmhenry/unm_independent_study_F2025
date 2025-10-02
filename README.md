# October 2025: Python NLP for Political Science PhD Students
## Asynchronous, Self-Paced Learning with Google Colab
### Fairooz (Political Rhetoric) & Brisa (Rights of Nature)

---

## 🎯 October Overview
**Format**: Self-paced Google Colab notebooks with asynchronous support  
**Time Zone Gap**: 8 hours (fully asynchronous structure)  
**Platform**: All work in Google Colab (no local Python needed)  
**Goal**: Build dissertation-specific text classification systems

**GitHub Repository**: [PLACEHOLDER_GITHUB_REPO_LINK]  

---

## 📚 Week 0 (Sept 30 - Oct 4): Python Foundations for R Users

### Context
Before diving into NLP, we need to ensure comfort with Python syntax and basic text processing. These two foundational notebooks translate your R knowledge directly to Python, using political science examples throughout.

### Colab Notebooks

#### **Notebook 1: R-to-Python Translation Guide** 
📔 [Open in Colab](https://colab.research.google.com/drive/1RiWdrZQWZfln9k0GvJaIzHkpj-yb83lF?usp=drive_link)

**What You'll Learn:**
- Direct R → Python operation mappings
- Working with pandas DataFrames (just like R dataframes!)
- String operations using Python (stringr → re)
- Creating functions without curly braces
- Understanding 0-based indexing

**Time Required**: 60-90 minutes  
**Deliverable**: Complete all exercises, especially the "Your Turn" sections

#### **Notebook 2: Python Text Analysis Essentials**
📔 [Open in Colab](https://colab.research.google.com/drive/1sGPd8ENJvEz2qe9EpfE-9KAhAsYtanZs?usp=drive_link)

**What You'll Learn:**
- Loading political speeches and legal documents
- Building a text cleaning pipeline
- Extracting features (word counts, lexical diversity)
- Pattern detection for your specific research
- Saving processed data for R analysis

**Time Required**: 90-120 minutes  
**Deliverable**: Process 20+ documents from your dissertation data

### Week 0 Checklist
- [ ] Complete Notebook 1 (translation guide)
- [ ] Complete Notebook 2 (text essentials)
- [ ] Upload your dissertation data to Colab
- [ ] Process at least 20 documents
- [ ] Post one success and one challenge in Slack

---

## 🔧 Week 1 (Oct 7-11): Advanced Text Processing with spaCy

### Context
Now that you're comfortable with Python basics, we'll use spaCy for more sophisticated NLP tasks like named entity recognition and dependency parsing.

### Core Notebook: "spaCy for Political & Legal Text"
📔 [Open in Colab](PLACEHOLDER_COLAB_LINK_3) | [GitHub](PLACEHOLDER_GITHUB_LINK_3)

**Building on Week 0:**
- Uses the same data loading approach from Notebook 2
- Extends your `clean_text_basic()` function with spaCy
- Adds entity extraction to your pattern detection

**New Capabilities:**
```python
# You'll learn to extract:
- Political figures and organizations
- Dates and temporal references  
- Legal citations and references
- Grammatical relationships
```

### Individual Tracks

**Fairooz: Political Rhetoric Analysis**
📔 [Rhetoric Patterns Notebook](PLACEHOLDER_COLAB_LINK_4)
- Build on Week 0's `political_patterns` dictionary
- Add named entity recognition for political actors
- Extract rhetorical structures (claims, evidence, appeals)
- Create dehumanization detector with linguistic features

**Brisa: Legal Document Structure**
📔 [Legal Parser Notebook](PLACEHOLDER_COLAB_LINK_5)
- Extend Week 0's `legal_patterns` dictionary
- Parse legal citations and cross-references
- Extract provision hierarchies
- Identify enforcement mechanisms

### Week 1 Deliverables
- Process 50 documents through spaCy pipeline
- Extract entities and patterns specific to your research
- Compare results with Week 0's basic approach

---

## 🤖 Week 2 (Oct 14-18): Zero-Shot Classification with Transformers

### Context
Building on your pattern detection from Weeks 0-1, we'll now use pre-trained language models for automatic classification without training data.

### Core Notebook: "Zero-Shot Classification Made Simple"
📔 [Open in Colab](PLACEHOLDER_COLAB_LINK_6) | [GitHub](PLACEHOLDER_GITHUB_LINK_6)

**Connection to Previous Work:**
- Load your processed data from Week 1
- Compare zero-shot results with pattern-based detection
- No complex setup - Hugging Face models just work in Colab!

**What You'll Build:**
```python
# Your classification pipeline:
1. Load your cleaned text (from Week 0-1)
2. Define classification categories
3. Apply zero-shot classifier
4. Validate against your patterns
5. Export results for analysis
```

### Individual Applications

**Fairooz:**
- Categories: dehumanizing, neutral, humanizing, inflammatory
- Multi-label classification for rhetorical strategies
- Confidence thresholds for human review

**Brisa:**
- Categories: substantive_right, procedural_right, enforcement_mechanism
- Hierarchical classification (document → provision → details)
- Jurisdiction and scope extraction

### Week 2 Deliverables
- Classify 200 documents using zero-shot models
- Achieve >70% agreement with manual coding
- Create confusion matrix comparing with Week 1 patterns

---

## 💡 Week 3 (Oct 21-25): LLM Classification with GPT-4/Claude

### Context
For complex classification tasks requiring reasoning, we'll use GPT-4 or Claude APIs. This builds directly on Week 2's work but adds nuanced understanding.

### Core Notebook: "Cost-Effective LLM Classification"
📔 [Open in Colab](PLACEHOLDER_COLAB_LINK_7) | [GitHub](PLACEHOLDER_GITHUB_LINK_7)

**Smart Integration:**
- Start with Week 2's zero-shot results
- Use LLMs only for ambiguous cases
- Implement caching to avoid reprocessing
- Cost calculator before running

**Prompt Engineering Templates:**
```python
# Pre-built templates you'll customize:
- Few-shot classification prompts
- Chain-of-thought reasoning
- Structured output formats
- Batch processing with rate limits
```

### API Setup
- **OpenAI Credits**: $25 per student provided
- **Alternative**: Claude API (similar cost)
- **Backup**: Free Llama models via Replicate

### Individual Focus

**Fairooz: Nuanced Rhetoric Detection**
- Severity scoring for dehumanization (1-10 scale)
- Target group identification
- Historical rhetoric comparisons
- Dog whistle detection

**Brisa: Legal Reasoning**
- Implementation timeline extraction
- Enforceability assessment
- Precedent identification
- Innovation vs. imitation scoring

### Week 3 Deliverables
- Process 100 high-priority documents
- Cost-benefit analysis (LLM vs zero-shot)
- Refined classification system
- Performance metrics comparison

---

## 📊 Week 4 (Oct 28-31): Integration & Export for November

### Context
Consolidate all methods into a single pipeline, preparing your data for November's causal analysis (which can be done in R!).

### Final Notebook: "Complete Classification Pipeline"
📔 [Open in Colab](PLACEHOLDER_COLAB_LINK_8) | [GitHub](PLACEHOLDER_GITHUB_LINK_8)

**Bringing It All Together:**
```python
# Your integrated pipeline:
1. Load raw documents
2. Clean text (Week 0 methods)
3. Extract features (Week 1 spaCy)
4. Initial classification (Week 2 zero-shot)
5. Refine ambiguous cases (Week 3 LLMs)
6. Export for R analysis
```

### Export Formats
- **CSV**: For R's read.csv()
- **Feather**: For faster R loading
- **JSON**: For metadata preservation
- **Codebook**: Variable descriptions

### Individual Deliverables

**Both Students:**
1. **Processed Dataset**: 500+ classified documents
2. **Methods Comparison**: 
   - Accuracy metrics
   - Processing time
   - Cost analysis
3. **R-Ready Output**: 
   ```r
   # Your data will include:
   - document_id
   - date
   - original_text
   - cleaned_text
   - classification
   - confidence_score
   - extracted_features
   ```

---

# Resources & Readings

#### Core Texts
- Grimmer, J., Roberts, M. E., & Stewart, B. M. (2022). *Text as Data: A New Framework for Machine Learning and the Social Sciences*
- Jurafsky, D. & Martin, J.H. (2024). *Speech and Language Processing* (Ch. 6, 11, 15)

#### Weekly Papers
**Week 1:**
- Denny, M. J., & Spirling, A. (2018). "Text Preprocessing for Unsupervised Learning"
- Benoit, K. et al. (2016). "quanteda: Quantitative Analysis of Textual Data"

**Week 2:**
- Rodriguez, P. L., & Spirling, A. (2022). "Word Embeddings for the Analysis of Ideological Placement in Parliamentary Corpora"
- Reimers, N., & Gurevych, I. (2019). "Sentence-BERT"

**Week 3:**
- Ziems, C. et al. (2024). "Can Large Language Models Transform Computational Social Science?"
- Törnberg, P. (2023). "ChatGPT-4 Outperforms Experts and Crowd Workers in Annotating Political Twitter Messages"

**Week 4:**
- King, G., Lam, P., & Roberts, M. E. (2017). "Computer-Assisted Keyword and Document Set Discovery"
- Molnar, C. (2022). *Interpretable Machine Learning* (selected chapters)

#### Tools & Libraries
```python
# Core dependencies
pandas >= 2.0
numpy >= 1.24
scikit-learn >= 1.3
spacy >= 3.6
transformers >= 4.30
sentence-transformers >= 2.2
openai >= 1.0
anthropic >= 0.5
langchain >= 0.1

# Visualization
plotly >= 5.0
altair >= 5.0
streamlit >= 1.25  # for dashboards

# Optional but recommended
bertopic >= 0.15
river >= 0.18  # for online learning
cleanlab >= 2.4  # for label quality
```

### Key Documentation
- [Google Colab Basics](https://colab.research.google.com/notebooks/intro.ipynb)
- [Pandas for R Users](https://pandas.pydata.org/docs/getting_started/comparison/comparison_with_r.html)
- [spaCy 101](https://spacy.io/usage/spacy-101)
- [Hugging Face Tutorials](https://huggingface.co/docs/transformers/index)

---

## ✅ Success Metrics

### Final Outcomes

By October 31, you will have:
1. **Technical Skills**: Python proficiency for NLP tasks
2. **Research Output**: 500+ documents classified and analyzed
3. **Methodological Knowledge**: Comparison of 4 classification approaches
4. **Ready for November**: Clean dataset for causal analysis in R

