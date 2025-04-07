# Text-to-SQL Prediciton Classifier Based on Linguistic Features

This project trains a classifier on Text-to-SQL prediction data using linguistic features.
The goal is to enable the classifier to determine whether a prediction was correct or incorrect, based on linguistic features of the input question.

# Spider Training Data Analysis

Before starting with the Classifier, an analysis in [analysis.ipynb](https://github.com/sinajaprlja/SPIDER/blob/main/analysis.ipynb) on spiders train data was done based on linguistic features. <br>
The data was then grouped by difficulty level using spiders evaluation script.

The main findings are as follows:
* Difficulty level is positively correlated with the number of tokens in the question and sentence complexity.
* Sentence length is consistent across difficulty levels, but more complex sentences tend to have higher syntactic distance.
* No significant differences in POS or named entities across difficulty levels.
* Easy questions have the highest proportion of wh-questions, with minimal difference across levels.
* Syntactic complexity, indicated by max_subtree_size and max_head_distance, correlates with sentence complexity.
* Easier questions exhibit slightly more vocabulary variety, while harder questions have more repetitive or less diverse vocabulary.
* Extra-difficulty questions contain the most frequent and rare words, and sentence lengths are similar across difficulty levels.


# Dataset and Preprocessing

The predicted SQL queries are taken from the repository: [Few-shot-NL2SQL-with-prompting](https://github.com/MohammadrezaPourreza/Few-shot-NL2SQL-with-prompting/blob/main/GPT4_results/GPT4_zero_shot.csv).

Inspired by the paper [Spider: A Large-Scale Human-Labeled Dataset for Complex and Cross-Domain Semantic Parsing and Text-to-SQL Task](https://arxiv.org/pdf/1809.08887), which introduces a large dataset for training and evaluating Text-to-SQL models, also classifying SQL queries by difficulty level, this project takes a different approach: this project uses the Spider dataset, [avalaible here](https://yale-lily.github.io/spider), along with spiders [Evaluator](https://github.com/taoyds/spider/blob/master/evaluation.py) to assess whether a prediction is correct or not based on linguistic features.

A slightly modified version of the original [evaluation script](https://github.com/sinajaprlja/SPIDER/blob/main/evaluation.py) is used in this project. All changes are explicitly marked with comments and **do not alter** the core evaluation logic — they only provide clearer labeling of whether a prediction is considered correct or incorrect.

Linguistic features extracted include general characteristics (e.g., number of tokens, presence of negation), POS tags, entity types, and the use of frequent or rare words.

Frequent words were estimated using [the 50k frequent words data provided here.](https://github.com/hermitdave/FrequencyWords/blob/master/content/2018/en/en_50k.txt) <br>
Rare words were determined from [the english full data provided here.](https://github.com/hermitdave/FrequencyWords/blob/master/content/2018/en/en_full.txt)

# Classifier Training

To determine the most effective model, four classifiers were trained:

* Naive Bayes
* Decision Tree
* Logistic Regression
* Random Forest


# Results

Without PCA, the best-performing classifier was Logistic Regression, achieving an accuracy of approximately 65%. <br>
With PCA, the best result came from the Decision Tree Classifier using 11 principal components, reaching an accuracy of about 64%. <br>

The most influential linguistic features included  ```num_tokens```, ```max_head_distance``` and ```max_subtree_size```. <br>
A detailed visualization of feature importances is available in the notebook: [classifier.ipynb](https://github.com/sinajaprlja/SPIDER/blob/main/classifier.ipynb)

Additionally, both classifiers were tested on the ```test.json``` file from the Spider dataset.

Without PCA, an Accuracy of approximately 65% was reached. <br>
With PCA, the Classifier performed slighty worse with an approximate acuracy of 53%.