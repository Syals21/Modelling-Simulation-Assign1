# 🎓 Discrete Choice Model: Programme Selection Simulator

A web-based tool that predicts academic programme selection using **multinomial logit modeling** and discrete choice theory.

**Live Demo:** [👉 https://syals21.github.io/Modelling-Simulation-Assign1/](https://syals21.github.io/Modelling-Simulation-Assign1/)

Course: STTHK2133 MODELING & SIMULATION A252 – Individual Assignment #1

---

## ⚡ Quick Start

### Online (Recommended)
Simply visit: [https://syals21.github.io/Modelling-Simulation-Assign1/](https://syals21.github.io/Modelling-Simulation-Assign1/)

### Local Setup
1. Clone/download the repository
2. Open `index.html` in your browser
3. Start exploring!

---

## 🎯 What It Does

The simulator answers: **"Which academic programme will a student choose?"**

It calculates choice probabilities by:
- Evaluating 6 programmes across 6 factors (Interest, Exam, Career, Location, Fees, Explore)
- Using weighted ratings (1-5 scale) for each programme
- Applying multinomial logit transformation to predict probabilities
- Displaying real-time results in an interactive chart

---

## 🔄 Four Input Modes

| Mode | Description |
|------|-------------|
| **1** | Use default ratings & weights (locked) |
| **2** | Custom ratings, fixed weights |
| **3** | Fixed ratings, custom weights |
| **4** | Fully customizable ratings & weights |

---

## 🧮 The Math

**Utility Formula:**
```
U(programme_i) = Σ (weight_j × rating_ij)
```

**Probability (Multinomial Logit):**
```
P(programme_i) = exp(U_i) / Σ exp(U_k)
```

All weights automatically normalize to sum to 100%.

---

## 🎨 Key Features

✨ **Glassmorphism UI** — Modern semi-transparent panels with blur effects  
📊 **Real-time Chart** — Instant probability visualization with Chart.js  
⚙️ **Dynamic Controls** — Interactive sliders and input tables  
🎯 **Four Flexible Modes** — Multiple analysis approaches  
📱 **Responsive Design** — Works on desktop browsers  

---

## 💻 Technical Stack

- **Frontend:** HTML5, CSS3, JavaScript (ES6+)
- **Visualization:** Chart.js
- **Deployment:** GitHub Pages
- **File Structure:** Single `index.html` file (all-in-one)

---

## 📊 Understanding Results

**High Probability (>25%)** → Strong fit for your preferences  
**Medium (10-25%)** → Competitive but not dominant  
**Low (<10%)** → Poor alignment with current settings  

---

## ✅ Browser Support

| Chrome | Firefox | Safari | Edge |
|--------|---------|--------|------|
| ✅ | ✅ | ✅ | ✅ |

Requires ES6 JavaScript and Canvas API support.

---

## 🔧 How to Use

1. **Select Input Mode** from the dropdown at the top
2. **Adjust Factor Ratings** in the left table (if mode allows)
3. **Adjust Factor Weights** using sliders (if mode allows)
4. **View Results** in the probability chart on the right

The chart updates **instantly** as you make changes.

---

## 📚 Project Structure

```
index.html       # Complete application (HTML + CSS + JS)
README.md        # This file
```

---

## 🆘 Troubleshooting

**Chart not showing?**
- Refresh the page (Ctrl+R or Cmd+R)
- Clear browser cache
- Try a different browser

**Sliders not working?**
- Enable JavaScript in browser settings
- Check F12 console for errors

---

## 🔗 Deployment

Hosted on **GitHub Pages**:
- **Repository:** [github.com/syals21/Modelling-Simulation-Assign1](https://github.com/syals21/Modelling-Simulation-Assign1)
- **Live URL:** [syals21.github.io/Modelling-Simulation-Assign1](https://syals21.github.io/Modelling-Simulation-Assign1/)

---

## 📖 Resources

- [Chart.js Docs](https://www.chartjs.org/)
- [MDN JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
- Discrete Choice Theory: McFadden (1974), Train (2009)

---

## ⚖️ License

Educational use only – Part of STTHK2133 course.

---

*Built with JavaScript • Powered by Discrete Choice Theory • Deployed on GitHub Pages*