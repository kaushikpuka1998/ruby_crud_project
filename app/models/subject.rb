class Subject < ApplicationRecord

    has_many :pages   #it is being connected with page model page

    scope :visible , lambda { where :visible => true }
    scope :invisible ,lambda {where :visible => false }
    scope :sorted , lambda {order "id ASC"}
    scope :search,lambda {|query| where ["name LIKE ?","%#{query}%"]}
end
