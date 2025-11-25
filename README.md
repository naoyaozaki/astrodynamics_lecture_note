# 宇宙軌道力学(Astrodynamics)：軌道設計に関する実践講義のためのノートブック

Jupyter Notebook (Python)を用いて，宇宙軌道力学に関する実践的な内容をノートブックをまとめています．航空宇宙工学を専攻する学部生を対象としています．

Google Colab上で動作するJupyter Notebookは，以下のバッジをクリックすることで利用できる：

| 内容 | ノートブック | Google Colab | 
| :--- | :--- | :--- | 
| 軌道伝播| propagation.ipynb | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/naoyaozaki/astrodynamics_lecture_note/blob/main/notebooks/propagation.ipynb) | 
| 状態遷移行列計算 | state_transition_matrix.ipynb | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/naoyaozaki/astrodynamics_lecture_note/blob/main/notebooks/propagation.ipynb) | 




# Requirements
 
* python>=3.6,<=3.8 (For `pykep`)
* numpy==1.20.2
* scipy==1.6.2
* matplotlib==3.4.2
* urllib3==1.25.11
* plotly==4.14.3
* pykep==2.6
* spiceypy==4.0.0

`spiceypy`を用いて，天体の軌道歴を取得するためには，Generic Kernelsを読み込む（Furnishする）必要があります．
 
# Usage
 
notebooksフォルダ内の.ipynbファイルを参照してください．

# Note
 
N.A
 
# Author
  
* 作成者：尾崎 直哉
* 所属：JAXA宇宙科学研究所
* E-mail：ozaki.naoya[at]jaxa.jp
 
