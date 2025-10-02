# October 2025: Computational Methods Independent Study
## Fairooz & Brisa - Political Science PhD Students

---

## Week 1 (Oct 1-4): Text Preprocessing & Feature Engineering
### Learning Objectives
- Master advanced text preprocessing for political/legal documents
- Build domain-specific preprocessing pipelines
- Create meaningful features from text data

### Joint Sessions (2 hours)
**Session 1: Advanced Text Preprocessing**
- Handling multilingual text and code-switching
- Custom tokenization for legal citations and political entities
- Dealing with OCR errors in digitized documents
- Building preprocessing pipelines with spaCy

**Session 2: Feature Engineering Workshop**
```python
# Key concepts to cover:
- TF-IDF variations for domain-specific terms
- N-gram extraction and selection
- Named entity recognition for political actors
- Dependency parsing for rhetoric analysis
```

### Individual Work
**Fairooz:**
- Build custom NER model for political figures in speeches
- Create dehumanization lexicon from literature
- Extract rhetorical patterns (metaphors, analogies)
- **Dataset goal:** 500+ preprocessed political speeches/statements

**Brisa:**
- Develop legal citation parser for RoN documents
- Extract provision structures and cross-references
- Build municipality/jurisdiction normalizer
- **Dataset goal:** 100+ preprocessed RoN ordinances/decisions

### Deliverable
- Jupyter notebook with complete preprocessing pipeline
- Documentation of edge cases and solutions
- Initial feature matrix for 50 documents

---

## Week 2 (Oct 7-11): Document Embeddings & Similarity
### Learning Objectives
- Implement various embedding techniques
- Measure document similarity meaningfully
- Create document clustering systems

### Joint Sessions (2 hours)
**Session 1: Embedding Methods Comparison**
- Word2Vec vs. BERT embeddings
- Sentence-BERT for document representation
- Domain adaptation techniques
- Handling long documents (chunking strategies)

**Session 2: Similarity Metrics & Clustering**
```python
# Implementation focus:
from sentence_transformers import SentenceTransformer
import umap
import hdbscan

# Document embedding and clustering pipeline
# Similarity matrices and network visualization
```

### Individual Work
**Fairooz:**
- Fine-tune BERT on political speech corpus
- Create similarity networks of political rhetoric
- Identify rhetorical "families" or patterns
- Temporal analysis of language drift

**Brisa:**
- Embed legal provisions for similarity search
- Create "innovation" vs "imitation" metrics
- Map policy diffusion through textual similarity
- Build provision recommendation system

### Deliverable
- Interactive visualization of document clusters
- Similarity analysis report with insights
- Code for real-time document matching

---

## Week 3 (Oct 14-18): LLM Classification & Validation
### Learning Objectives
- Design effective prompts for classification
- Implement few-shot learning strategies
- Build validation frameworks for LLM outputs

### Joint Sessions (2 hours)
**Session 1: Advanced Prompting Strategies**
- Chain-of-thought reasoning for complex classification
- In-context learning with examples
- Prompt templates for consistency
- Using local vs. API-based models

**Session 2: Validation & Active Learning**
```python
# Framework components:
- Inter-annotator agreement with LLMs
- Confidence scoring and uncertainty sampling
- Active learning loops
- Cost-benefit analysis of human vs. LLM coding
```

### Individual Work
**Fairooz:**
- Develop multi-label classifier for rhetoric types:
  - Dehumanizing language (with severity scores)
  - Target groups identification
  - Emotional appeals classification
  - Policy position extraction
- Create validation set of 200 hand-coded examples
- Test GPT-4, Claude, and Llama models

**Brisa:**
- Build hierarchical classifier for RoN provisions:
  - Rights granted (substantive/procedural)
  - Enforcement mechanisms
  - Legal standing provisions
  - Implementation timelines
- Validate against expert-coded documents
- Compare zero-shot vs. few-shot performance

### Deliverable
- Classification system with >80% accuracy
- Validation report with confusion matrices
- API cost analysis and recommendations

---

## Week 4 (Oct 21-25): Supervised Learning & Model Evaluation
### Learning Objectives
- Train traditional ML models as baselines
- Implement ensemble methods
- Design robust evaluation strategies

### Joint Sessions (2 hours)
**Session 1: Classical ML for Text**
- SVM, Random Forests, XGBoost for text
- Feature selection techniques
- Handling imbalanced classes
- Cross-validation strategies

**Session 2: Model Interpretation**
```python
# Tools and techniques:
import shap
import lime
from sklearn.inspection import permutation_importance

# Building interpretable models
# Extracting decision rules
# Creating model cards
```

### Individual Work
**Fairooz:**
- Train ensemble classifier combining:
  - Lexicon-based rules
  - Traditional ML (SVM/RF)
  - LLM predictions
- Analyze false positives/negatives
- Create interpretability dashboard

**Brisa:**
- Build cascading classifier:
  - Document type → provision type → specifics
- Compare with legal expert annotations
- Develop confidence thresholds for human review

### Deliverable
- Comparative analysis: LLM vs. traditional ML
- Model performance report with error analysis
- Production-ready classification pipeline

---

## Week 5 (Oct 28-31): Integration & Scaling
### Learning Objectives
- Build end-to-end pipelines
- Implement batch processing
- Prepare for time series analysis

### Joint Sessions (2 hours)
**Session 1: Pipeline Architecture**
- Data versioning with DVC
- Workflow orchestration (Airflow/Prefect)
- Error handling and logging
- Monitoring model drift

**Session 2: Preparing for Causal Analysis**
```python
# Bridge to November's content:
- Structuring data for panel analysis
- Creating treatment/control groups
- Temporal alignment of text data
- Feature extraction for DiD
```

### Individual Work
**Fairooz:**
- Process full corpus (1000+ documents)
- Create temporal rhetoric database
- Generate preliminary time series
- Identify potential "shocks" for causal analysis

**Brisa:**
- Complete RoN adoption database
- Link text features to adoption dates
- Create geographic diffusion maps
- Prepare matched pairs for DiD

### Deliverable
- Full pipeline documentation
- Processed datasets ready for causal analysis
- Initial descriptive statistics report

---

## Monthly Milestones & Assessment

### Portfolio Components
1. **GitHub Repository** with well-commented code

2. **Methods Documentation** (5-10 pages):
   - Preprocessing decisions and rationale
   - Classification system design
   - Validation methodology
   - Limitations and future work

3. **Preliminary Results** presentation (15 min)


### Resources & Readings

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
