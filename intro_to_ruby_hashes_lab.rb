def base_hash
  # Remember implicit return! We're returning this new Hash _without_ the
  # keyword "return." Nice and neat.
	{
	  :railroads => {}
	}
end

def monopoly_with_second_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
  {
	  :railroads => {:pieces => 4}
	}
end

def monopoly_with_third_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
  
  {
	  :railroads => {
      :pieces => 4,
      :rent_in_dollars => {:one_piece_owned => 25, :two_pieces_owned => 50, :three_pieces_owned => 100, :four_pieces_owned => 200},
      :names => {:reading_railroad => {},:pennsylvania_railroad => {}, :b_and_o_railroad => {},:shortline_railroad => {} }
	  }
	}
end

def monopoly_with_fourth_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
end


######
      it "has a key :pennsylvania_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:pennsylvania_railroad)).to(be_truthy, "key :pennsylvania_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:pennsylvania_railroad]).to(eq({}), ":pennsylvania_railroad should point to an empty Hash")
        end

        it "has a key :b_and_o_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:b_and_o_railroad)).to(be_truthy, "key :b_and_o_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:b_and_o_railroad]).to(eq({}), ":b_and_o_railroad should point to an empty Hash")
        end

        it "has a key :shortline_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:shortline_railroad)).to(be_truthy, "key :shortline_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:shortline_railroad]).to(eq({}), ":shortline_railroad should point to an empty Hash")
        end
      end
  end

  describe "the monopoly_with_fourth_tier method builds on the hash returned by monopoly_with_third_tier, but updates the Hash so that each of the :railroads :names keys points to a Hash with a key \"mortgage_value\" that is a String with a $-sign and an Integer after it" do

    it "reports reading_railroad's mortgage value as $100" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:reading_railroad]["mortgage_value"]).to eq("$100")
    end

    it "sets the 1st key of the :pennsylvania_railroad hash to a string, 'mortgage_value', whose value is also a string, '$200'" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:pennsylvania_railroad]["mortgage_value"]).to eq("$200")
    end

    it "sets the 1st key of the :b_and_o_railroad hash to a string, 'mortgage_value', whose value is also a string, '$400'" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:b_and_o_railroad]["mortgage_value"]).to eq("$400")
    end

    it "sets the 1st key of the :shortline_railroad hash to a string, 'mortgage_value', whose value is also a string, '$800'" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:shortline_railroad]["mortgage_value"]).to eq("$800")
    end
  end
end