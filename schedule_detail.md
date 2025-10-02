# October 2025: Python NLP for R Users - Asynchronous Study Plan

---

## 🎯 October Learning Path Overview
**Goal**: Transition from R to Python for NLP, building dissertation-relevant classification systems  
**Format**: Self-paced Google Colab notebooks with asynchronous support  
**Time Commitment**: ~10-12 hours/week independent work  

---

## 📚 Week 0 (Sept 30 - Oct 4): Python for R Users Bootcamp
*Foundation week to ensure Python comfort before diving into NLP*

### Self-Paced Colab Notebooks

**Notebook 1: R-to-Python Translation Guide**
```python
# Open in Colab: [will provide link]
# Topics covered:
"""
R Operation          →  Python Equivalent
-------------------------------------------
df %>% filter()      →  df[df['column'] > value]
df %>% mutate()      →  df['new_col'] = expression
df %>% group_by()    →  df.groupby()
lapply()             →  list comprehension [x for x in list]
read_csv()           →  pd.read_csv()
ggplot()             →  plotly.express or matplotlib
"""
```

**Notebook 2: Python Essentials for Text Analysis**
```python
# Pre-loaded in Colab, no installation needed!
import pandas as pd
import numpy as np
import re  # regex - similar to stringr

# Your first Python text processing
def clean_text(text):
    """This is like creating a function in R"""
    text = text.lower()
    text = re.sub(r'[^\w\s]', '', text)
    return text

# Exercise: Process your first political document
```

**Notebook 3: Working with Your Dissertation Data**
- **Fairooz version**: Load and explore 10 political speeches
- **Brisa version**: Load and explore 10 legal documents
- Includes complete starter code with comments

### Asynchronous Support Structure
- **Video walkthroughs**: 15-min Loom videos for each notebook
- **Slack check-in**: Post one question and one success daily
- **Office hours recording**: Weekly recorded Q&A session

### Deliverable
✅ Complete all 3 notebooks  
✅ Successfully load and preview your own data  
✅ Share one "aha moment" about Python vs R

---

## 📊 Week 1 (Oct 7-11): Text Preprocessing with spaCy

### Core Colab Notebook: "Text Preprocessing Pipeline"

```python
# This notebook includes:
# 1. Complete installation code (one click!)
!pip install spacy
!python -m spacy download en_core_web_sm

# 2. Step-by-step preprocessing with YOUR data
import spacy
nlp = spacy.load("en_core_web_sm")

# 3. Pre-written functions you just need to run
def process_political_text(text):
    """Already written for you - just understand and modify"""
    doc = nlp(text)
    # Extract entities, tokens, etc.
    return processed_text
```

### Individual Notebooks (Choose Your Path)

**Fairooz: "Detecting Political Rhetoric Patterns"**
```python
# Colab link: [to be provided]
# This notebook contains:
1. Loading your speech corpus (template provided)
2. Building a dehumanization lexicon (starter list included)
3. Pattern matching for rhetorical devices
4. Visualizing results

# You'll modify only clearly marked sections:
# === MODIFY THIS SECTION ===
your_keywords = ['your', 'terms', 'here']
# === END MODIFICATION ===
```

**Brisa: "Legal Document Structure Parser"**
```python
# Colab link: [to be provided]
# This notebook contains:
1. Loading RoN documents (template provided)
2. Extracting legal citations (regex provided)
3. Identifying provision types
4. Creating structured output

# Pre-built legal patterns:
citation_pattern = r'\b\d{1,3}\s+\w+\.\s+\d+\b'  # Already tested!
```

### Learning Resources
- **Video Tutorial**: "Python Text Processing for Social Scientists" (45 min)
- **Cheat Sheet**: PDF with R → Python text operations
- **Example Output**: See exactly what your results should look like

### Weekly Milestone
- Process 50 documents through your pipeline
- Share 3 interesting patterns you discovered
- Post one coding challenge for peer help

---

## 🤖 Week 2 (Oct 14-18): Zero-Shot Classification with Hugging Face

### Core Colab Notebook: "LLMs Without the Complexity"

```python
# One-click setup in Colab:
!pip install transformers

from transformers import pipeline

# Pre-configured classifier - just works!
classifier = pipeline("zero-shot-classification")

# Your task: Define YOUR categories
fairooz_labels = ["dehumanizing", "neutral", "humanizing"]
brisa_labels = ["substantive_right", "procedural_right", "enforcement"]

# The notebook does the rest!
results = classifier(your_text, candidate_labels=your_labels)
```

### Individual Projects

**Fairooz: Multi-Label Rhetoric Classification**
- Pre-built notebook with:
  - Working classifier for 6 rhetoric types
  - Batch processing code (handles 100s of documents)
  - Visualization of results over time
  - Validation against 20 pre-coded examples

**Brisa: Hierarchical Legal Classification**
- Pre-built notebook with:
  - Two-stage classification (document type → provision type)
  - Confidence thresholds already tuned
  - Export to CSV for R analysis
  - Comparison with manual coding

### Troubleshooting Guide
```markdown
Common Issues & Solutions:
1. "Out of memory" → Use provided batch_size=8
2. "Slow processing" → Use provided caching code
3. "Weird results" → Check provided label guidelines
```

### Weekly Milestone
- Classify 200 documents
- Achieve >70% accuracy on test set
- Document 3 classification challenges

---

## 🎓 Week 3 (Oct 21-25): OpenAI/Anthropic API Classification

### Core Colab Notebook: "Production-Ready LLM Classification"

```python
# Secure API key handling in Colab
from google.colab import userdata
api_key = userdata.get('OPENAI_KEY')  # Instructions provided

# Pre-written prompt templates - just customize!
def create_prompt(text, YOUR_CRITERIA):
    """
    You only need to modify the criteria section
    Everything else is optimized and tested
    """
    prompt = f"""
    Classify this political text:
    
    Text: {text}
    
    Criteria: {YOUR_CRITERIA}
    
    Return: category and confidence (0-1)
    """
    return prompt
```

### Cost-Conscious Processing
```python
# The notebook includes:
1. Cost calculator before you run
2. Sampling strategy (test on 10, then 50, then all)
3. Caching to avoid re-processing
4. Batch processing with rate limits

# Example included:
estimated_cost = calculate_cost(num_documents=500)
print(f"This will cost approximately ${estimated_cost}")
```

### Individual Notebooks

**Fairooz: Nuanced Dehumanization Detection**
- Few-shot examples included
- Severity scoring system
- Target group extraction
- Comparison with zero-shot results

**Brisa: Complex Legal Reasoning**
- Chain-of-thought prompting for legal analysis
- Citation verification
- Implementation timeline extraction
- Jurisdiction identification

### Weekly Milestone
- Process 100 documents with GPT-4
- Compare with Week 2's zero-shot results
- Create cost-benefit analysis

---

## 📈 Week 4 (Oct 28-31): Integration & Analysis

### Final Colab Notebook: "Putting It All Together"

```python
# Combine everything into one pipeline:
def complete_analysis_pipeline(document_folder):
    """
    This function is completely written for you!
    Just point it to your data
    """
    # 1. Load documents
    # 2. Preprocess with spaCy
    # 3. Classify with best method
    # 4. Export for R analysis
    # 5. Create visualizations
    
    return "results.csv", "visualizations.html"
```

### Export for R Analysis
```python
# Special section: Preparing for November's R work
# Export formats optimized for R:
df.to_csv('for_r_analysis.csv', index=False)
df.to_feather('for_r_analysis.feather')  # Faster R loading

# Metadata for R:
metadata = {
    'processing_date': today,
    'classification_method': 'GPT-4',
    'confidence_threshold': 0.7
}
```

### Individual Deliverables

**Both Students:**
1. Processed dataset (500+ documents)
2. Classification performance report
3. Methods comparison table
4. Ready-for-R dataset

---

## 📋 Asynchronous Schedule & Support

### Weekly Rhythm (Flexible Timing)

**Monday (Your Time)**
- New notebooks released
- Video walkthrough available
- Week's goals posted

**Wednesday (Your Time)**
- Mid-week check-in form
- Post questions in Slack
- Share progress screenshot

**Friday (Your Time)**
- Submit week's notebook
- Peer feedback exchange
- Watch recorded office hours

### Communication Protocol

**Slack Channels:**
- `#python-help` - Code questions (2-hour response time)
- `#daily-wins` - Share successes
- `#troubleshooting` - Error messages and fixes

**Asynchronous Meetings:**
- Record 5-min weekly Loom update
- Instructor provides 10-min video feedback
- Schedule one live meeting if needed (Calendly link)

### Resources Always Available

**Google Drive Folder:**
```
/October_NLP_Course/
  /Week_1/
    - Starter_Notebook.ipynb
    - Solution_Notebook.ipynb
    - Video_Walkthrough.mp4
    - R_to_Python_CheatSheet.pdf
  /Week_2/
    ...
  /Sample_Data/
    - political_speeches_sample.csv
    - legal_documents_sample.csv
  /Templates/
    - classification_report_template.ipynb
```

---

## 🎯 Success Metrics

### Self-Assessment Checkpoints

After each week, you should be able to:

**Week 1:** ✅ "I can load and preprocess text in Python"  
**Week 2:** ✅ "I can classify documents with zero-shot models"  
**Week 3:** ✅ "I can use GPT-4 for complex classification"  
**Week 4:** ✅ "I have a complete pipeline for my dissertation"

### Troubleshooting Decision Tree

```mermaid
Problem?
├── Code won't run
│   └── Check pinned Slack message for common fixes
├── Conceptual confusion
│   └── Watch the concept video (< 10 min)
├── Need human help
│   └── Post in Slack with:
│       - Screenshot
│       - What you tried
│       - Minimal example
└── Completely stuck
    └── Book 15-min video call (Calendly)
```

---

## 💡 R Users: Special Notes

### Your R Skills Transfer!
- **tidyverse thinking** → pandas methods chain similarly
- **ggplot logic** → plotly express uses same grammar
- **R Markdown** → Jupyter notebooks are similar
- **Functions** → Python functions are simpler (no curly braces!)

### Keep Using R When It Makes Sense
- Export Python results → Analyze in R
- Use R for final statistical analysis
- Create publication figures in R if preferred
- November's causal analysis can be in R!

### Common R → Python Gotchas (Pre-Solved in Notebooks)
```python
# Python uses 0-indexing (R uses 1)
first_item = list[0]  # Not list[1]

# Python uses indentation (R uses {})
if condition:
    do_something()  # Indent matters!

# Python uses : for ranges (R uses :)
items[0:5]  # First 5 items

# These are all handled in the notebooks!
```

---

## 📧 Final Notes

### What You DON'T Need to Worry About
- Installing Python locally (Colab handles it)
- Managing packages (All pre-installed in notebooks)
- Writing complex code (Templates provided)
- Debugging alone (Support system in place)

### What You SHOULD Focus On
- Understanding the concepts
- Applying methods to YOUR data
- Asking questions early and often
- Building toward your dissertation

### October Commitment
- **Time**: 10-12 hours/week (flexible scheduling)
- **Output**: 500+ classified documents
- **Learning**: Confidence with Python NLP
- **Support**: Never more than 24 hours from help

### Questions Before Starting?
Post in #october-kickoff or email instructor

---

*Remember: Every notebook is tested, every function is pre-written, and every error has a solution. You're learning Python as a tool, not becoming a programmer. Focus on your research questions, not the syntax.*