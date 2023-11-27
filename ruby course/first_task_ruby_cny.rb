arr = [1, -2, 3, -4, 5, -6]

# 25 Дано цілочисельний масив. Перетворити його, вставивши перед кожним додатним елементом нульовий елемент.
indexes_to_put_zero_at = []

arr.each_with_index { |element, index| indexes_to_put_zero_at << index if element.positive? }
indexes_to_put_zero_at.reverse.each { |index| arr.insert(index, 0) }

# 26 Дано цілочисельний масив. Перетворити його, вставивши перед кожним від'ємним елементом нульовий елемент.
indexes_to_put_zero_at = []

arr.each_with_index { |element, index| indexes_to_put_zero_at << index if element.negative? }
indexes_to_put_zero_at.reverse.each { |index| arr.insert(index, 0) }

# 27 Дано цілочисельний масив. Перетворити його, вставивши після кожного додатного елемента нульовий елемент.
indexes_to_put_zero_at = []

arr.each_with_index { |element, index| indexes_to_put_zero_at << index if element.positive? }
indexes_to_put_zero_at.reverse.each { |index| arr.insert(index + 1, 0) }

# 28 Дано цілочисельний масив. Перетворити його, вставивши після кожного від'ємного елемента нульовий елемент.
indexes_to_put_zero_at = []

arr.each_with_index { |element, index| indexes_to_put_zero_at << index if element.negative? }
indexes_to_put_zero_at.reverse.each { |index| arr.insert(index + 1, 0) }

# 29 Дано цілочисельний масив. Упорядкувати його за зростанням.
arr.sort

# 30 Дано цілочисельний масив. Упорядкувати його за спаданням.
arr.sort.reverse

# 31 Дано цілочисельний масив. Вивести індекси масиву в тому порядку, в якому відповідні їм елементи утворюють спадну послідовність.
sorted_indices = arr.each_with_index.sort.reverse.map { |el, id| id }

# 32 Дано цілочисельний масив. Вивести індекси масиву в тому порядку, в якому відповідні їм елементи утворюють зростаючу послідовність.
sorted_indices = arr.each_with_index.sort.map { |el, id| id }

# 33 Дано цілочисельний масив. Знайти індекс мінімального елемента.
min_index = arr.each_with_index.min_by { |el, idx| el }[1]

# 34 Дано цілочисельний масив. Знайти індекс максимального елемента.
min_index = arr.each_with_index.max_by { |el, idx| el }[1]

# 35 Дано цілочисельний масив. Знайти індекс першого мінімального елемента.
min_index = arr.index(arr.min)

# 36 Дано цілочисельний масив. Знайти індекс першого максимального елемента.
min_index = arr.index(arr.max)

# 37 Дано цілочисельний масив. Знайти індекс останнього мінімального елемента.
last_min_index = arr.rindex(arr.min)

# 38 Дано цілочисельний масив. Знайти індекс останнього максимального елемента.
last_max_index = arr.rindex(arr.max)

# 39 Дано цілочисельний масив. Знайти кількість мінімальних елементів.
min_count = arr.count(arr.min)
