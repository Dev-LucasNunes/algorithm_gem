require_relative '../lib/Problemas/find_future'


RSpec.describe "next_closest_date" do
  it "returns the closest date from the array when given a query date that exists in the array" do
    arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
    query = "23/5/56645"
    expect(next_closest_date(arr, query)).to eq("23/5/56645")
  end

  it "returns -1 when given a query date that is after all dates in the array" do
    arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
    query = "25/5/56645"
    expect(next_closest_date(arr, query)).to eq("-1")
  end
end
