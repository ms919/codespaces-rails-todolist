class Task < ApplicationRecord
  enum status: { untouched: 0, launch: 1, done: 2, pending: 3, withdraw: 4 }
end
