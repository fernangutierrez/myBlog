class Article < ApplicationRecord
    belongs_to :user
    has_many :comments
	validates :title, presence: true, uniqueness: true
	validates :body, presence: true
	before_save :set_visits_count

    
    def update_visits_count
    	self.update(visits_count: self.visits_count + 1)
    	
    end


    private
    def set_visits_count
    	self.visits_count ||= 0
    	
    end

end
