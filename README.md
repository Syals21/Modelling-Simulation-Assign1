# 🎓 Discrete Choice Model: Programme Selection Simulator

> *A sophisticated web-based modeling system that predicts academic program selection using advanced discrete choice theory and multinomial logit analysis.*

---

## 📋 Overview

The **Discrete Choice Model: Programme Selection Simulator** is an interactive educational tool designed to demonstrate how students make decisions about their academic path. By harnessing the power of **multinomial logit modeling** (a cornerstone of econometric choice analysis), this system transforms subjective preferences and weighted factors into quantifiable probability predictions.

At its core, this simulator answers a fundamental question: *"Given a student's preferences across multiple criteria, which academic programme are they most likely to choose?"*

### What Makes It Special?

Unlike traditional decision-making tools that rely on simple scoring, this system employs **discrete choice theory**—the same mathematical framework used by economists and researchers to model real-world decisions in transportation, marketing, public policy, and beyond. It converts human preferences into probabilistic outcomes using the powerful multinomial logit function.

---

## 🎯 Key Features

### 🔄 **Four Flexible Input Modes**

The simulator offers unprecedented flexibility with four distinct operational modes:

1. **Mode 1: Locked Defaults** 
   - Uses Aiman's pre-configured factor ratings and weights
   - Perfect for understanding the baseline prediction model
   - Best for: Students learning the concept without customization

2. **Mode 2: Flexible Factors, Fixed Weights**
   - Customize how each programme is rated across the six factors
   - Maintains Aiman's carefully calibrated weight distribution
   - Best for: Exploring how changing programme attributes affects selection probability

3. **Mode 3: Fixed Factors, Flexible Weights**
   - Keep the factor ratings constant while adjusting their importance
   - Modify how much each criterion influences the final decision
   - Best for: Understanding the impact of preference prioritization

4. **Mode 4: Total Customization**
   - Complete freedom to modify both ratings AND weights simultaneously
   - Create entirely personalized decision scenarios
   - Best for: Advanced analysis and sensitivity testing

### 📊 **Six Evaluation Factors**

The system considers six distinct decision-making dimensions:

- **Interest** (30% default weight): Personal academic interest alignment
- **Exam** (20% default weight): Entrance exam performance requirements
- **Career** (25% default weight): Career prospects and opportunities
- **Location** (10% default weight): Geographic accessibility and campus location
- **Fees** (10% default weight): Cost of education and financial burden
- **Explore** (5% default weight): Opportunities for exploration and discovery

### 🏫 **Six Academic Programmes**

The simulator covers comprehensive post-secondary options:

- **Pure Sciences** — Theoretical and experimental science
- **Applied Sciences** — Practical scientific applications
- **Engineering** — Technical design and innovation
- **Accounting** — Finance and business management
- **Management** — Business administration and leadership
- **Arts** — Humanities and social sciences

### 📈 **Real-Time Probability Visualization**

A dynamic, interactive bar chart displays predicted choice probabilities for all six programmes, updating instantly as you adjust factors and weights. The visualization uses vibrant cyan bars against a sophisticated blue gradient background for optimal clarity.

---

## 🧮 Mathematical Foundation

### Utility Calculation

The system computes a **utility score** for each programme using the weighted sum formula:

```
U(programme_i) = Σ (weight_j × rating_ij)
```

Where:
- `U(programme_i)` = Total utility for programme i
- `weight_j` = Importance weight assigned to factor j
- `rating_ij` = How well programme i performs on factor j

### Multinomial Logit Transformation

Raw utilities are converted to probabilities using the exponential multinomial logit function:

```
P(programme_i) = exp(U_i) / Σ exp(U_k) for all programmes k
```

This elegant mathematical transformation ensures:
- ✅ All probabilities sum to exactly 100%
- ✅ Higher utilities result in higher probabilities
- ✅ Non-linear relationships reflect realistic preference patterns
- ✅ Results remain valid across different utility scales

### Weight Normalization

User-defined weights are automatically normalized to sum to 100%, ensuring consistent decision models regardless of how weights are input.

---

## 🎨 Design Excellence

### Visual Hierarchy
- **Glassmorphism aesthetic** with semi-transparent panels and backdrop blur effects
- **Premium blue gradient background** (dark blue to purple-blue) for professional appearance
- **High contrast white typography** for exceptional readability
- **Smooth animations and hover effects** for intuitive user interaction

### Interactive Components
- **Sleek dropdown selector** for quick mode switching
- **Dynamic rating input table** with visual feedback
- **Smooth slider controls** with gradient thumbs for weight adjustment
- **Real-time chart updates** powered by Chart.js

---

## 🚀 How to Use

### Getting Started

1. **Open `index.html`** in any modern web browser
2. **Select an input mode** from the "Choose Input Method" dropdown
3. **Review the Factor Ratings table** showing how each programme scores on each criterion
4. **Observe the Factor Weights section** displaying the relative importance of each factor
5. **Check the Predicted Choice Probabilities chart** for results

### Workflow Examples

**Example 1: Compare Baseline Scenarios**
- Keep Mode 1 active to understand the default model
- Note which programme has the highest probability
- Understand how the six factors work together

**Example 2: Explore Factor Sensitivity**
- Switch to Mode 2 and adjust one programme's rating significantly
- Observe how this affects only that programme's probability
- Answer: "How important is programme quality?"

**Example 3: Understand Weight Impact**
- Switch to Mode 3 and increase a factor's weight substantially
- Watch probabilities shift based on new priorities
- Answer: "What if Career prospects matter more than Fees?"

**Example 4: Personal Decision Analysis**
- Switch to Mode 4 for complete customization
- Input YOUR personal ratings and preference weights
- Generate YOUR personal probability forecast

---

## 💡 Educational Applications

This simulator is perfect for:

- **Understanding Choice Theory**: Learn how multinomial logit models work in practice
- **Decision Analysis**: Explore how different factors influence major life decisions
- **Sensitivity Analysis**: Test how changing assumptions affects outcomes
- **Econometric Concepts**: See discrete choice theory applied in real-time
- **Business Strategy**: Understand how consumers evaluate alternatives
- **Academic Exploration**: Analyze programme selection patterns

---

## 🔧 Technical Architecture

### Core Technologies
- **HTML5** — Semantic structure
- **CSS3** — Modern styling with glassmorphism and gradients
- **JavaScript (Vanilla)** — No dependencies except Chart.js
- **Chart.js** — Beautiful data visualization

### Key Functions

| Function | Purpose |
|----------|---------|
| `initializeUI()` | Dynamically generates tables and sliders |
| `applyMode()` | Manages input locking/unlocking per selected mode |
| `updateChart()` | Computes utilities, normalizes weights, and updates visualization |
| Multinomial Logit Formula | Converts utilities to probabilities |

### Data Structure

```javascript
programmes = [6 academic options]
factors = [6 decision criteria]
defaultRatings = [6×6 matrix of programme ratings]
defaultWeights = [6 normalized factor weights]
```

---

## 📊 Sample Scenario

Using the default configuration, the system might predict:

| Programme | Probability |
|-----------|------------|
| Engineering | 28% |
| Pure Sciences | 22% |
| Applied Sciences | 19% |
| Accounting | 16% |
| Management | 10% |
| Arts | 5% |

These probabilities are **not** arbitrary—they emerge from the mathematical interaction of factor ratings and weights through the multinomial logit function.

---

## 🎓 Understanding the Results

### Why These Probabilities?

The final probabilities reflect:
1. How well each programme aligns with the defined factors
2. How important those factors are (via weights)
3. The mathematical transformation through the exponential function
4. The competitive landscape of all alternatives

### What They Don't Mean

- ❌ They're **not** predictions of individual behavior
- ❌ They're **not** market shares
- ❌ They're **not** biased by personal experience

### What They Actually Mean

- ✅ They represent the **relative attractiveness** of each option
- ✅ They quantify **preference intensity** across factors
- ✅ They model **rational choice behavior** under uncertainty

---

## 🌟 Advanced Features

### Real-Time Interactivity
- Changes to ratings or weights instantly update the chart
- No page reload needed
- Immediate visual feedback

### Flexible Weight Adjustment
- Drag sliders from 0 to 1 in increments of 0.05
- Weights automatically normalize to sum to 100%
- Visual display of current weight values

### Input Validation
- Rating inputs constrained to 1-5 scale
- Weight slider provides smooth 0-1 range
- Automatic normalization prevents invalid states

### Responsive Design
- Optimized for desktop viewing
- Glassmorphic panels adapt to screen size
- Accessible controls with proper contrast ratios

---

## 📌 Key Insights from the Model

### The Power of Weights
Small changes in factor weights can dramatically shift which programme appears most attractive. This demonstrates how **prioritization matters** in decision-making.

### The Logit Advantage
The multinomial logit function ensures realistic probability distributions. Unlike linear models, it naturally captures **diminishing returns** and **non-linear preferences**.

### Factor Interaction Effects
No factor operates in isolation. The model shows how **multiple criteria combine** to influence decisions, much like real-world choices.

---

## 🔍 Validation & Interpretation

### Testing the Model
- Mode 1 provides a baseline for comparison
- Mode 2 and 3 allow isolated factor testing
- Mode 4 enables comprehensive scenario analysis

### Quality Checks
- ✅ All probabilities sum to 100%
- ✅ Higher utilities yield higher probabilities
- ✅ Weight normalization maintains consistency
- ✅ No negative probabilities

---

## 📚 Educational Context

This project demonstrates mastery of:

✨ **Discrete Choice Theory** — Econometric choice modeling  
✨ **Multinomial Logit Models** — Advanced probability modeling  
✨ **Interactive UI Design** — User-centric interface development  
✨ **Real-time Computation** — Instant mathematical processing  
✨ **Data Visualization** — Effective result communication  
✨ **Glassmorphism Design** — Modern aesthetic principles  

---

## 💻 Browser Compatibility

- ✅ Chrome/Chromium (Latest)
- ✅ Firefox (Latest)
- ✅ Safari (Latest)
- ✅ Edge (Latest)

Requires modern JavaScript (ES6) and Canvas API support.

---

## 🎯 Future Enhancement Possibilities

- 📱 Mobile-responsive layout
- 💾 Save/load custom scenarios
- 📊 Comparative analysis visualization
- 🔢 Statistical confidence intervals
- 🌐 Multi-language support
- 📈 Historical scenario comparison
- 🤖 AI recommendations based on inputs

---

## 📖 How to Interpret Results

**High Probability (>25%)**
- This programme is highly attractive given current settings
- It scores well on important factors
- Consider this a strong candidate

**Medium Probability (10-25%)**
- This programme is competitive but not dominant
- It has specific strengths in certain factors
- May be preferred if priorities shift

**Low Probability (<10%)**
- This programme doesn't align well with current preferences
- Would require significant factor rating improvements
- Unlikely to be the primary choice

---

## 🤝 Collaboration & Attribution

This system was engineered using:
- **Discrete Choice Theory** from econometric research
- **Multinomial Logit Framework** from choice modeling literature
- **Modern Web Technologies** for seamless interactivity
- **Design Principles** for optimal user experience

---

## ✨ Conclusion

The **Discrete Choice Model: Programme Selection Simulator** transforms abstract econometric theory into an interactive, visual learning experience. Whether you're exploring academic options, teaching choice theory, or conducting decision analysis, this system provides powerful insights through the elegant mathematics of multinomial logit modeling.

**Experience the power of data-driven decision analysis. Adjust, explore, and discover what the mathematics reveals about choice behavior.**

---

*Built with precision, designed with elegance, powered by mathematics.*

**Version 1.0** | Glassmorphism UI | Multinomial Logit Model | Real-time Visualization