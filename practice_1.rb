require 'decisiontree'

attributes = ['Temps']

training = [
  [72.0, 'perfect'],
  [75.0, 'perfect'],
  [82.0, 'good'],
  [89.0, 'kinda Healthy'],
  [98.0, 'hot'],
  [30.9, 'crazy'],
  [130.1, 'dead'],
  [100.8, 'sick'],
  [92.0, 'hot']
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)

dec_tree.train

me_test = [-92.5, 'healthy']

dec_tree.predict(me_test)