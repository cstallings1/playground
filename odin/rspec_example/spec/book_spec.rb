require 'spec_helper'

describe Book do

	before :each do
		@book = Book.new("title", "author", :category)
	end

	describe "#new" do
		it "takes three parameters and returns a Book object" do
			@book.should be_an_instance_of Book
		end
	end

	describe "#title" do
		it "returns the correct title" do
			@book.title.should eql "title"
		end
	end

	describe "#author" do
		it "returns the correct author" do
			@book.author.should eql "author"
		end
	end

	describe "#category" do
		it "returns the correct category" do
			@book.category.should eql :category
		end
	end

end