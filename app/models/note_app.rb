class NoteApp < ApplicationRecord
  validates :noteText, presence: true, length: { minimum: 5 }
end
