require_relative "../../lib/airplane"

describe Airplane do
  let (:my_plane) {Airplane.new("cesna", 10, 150)}

  describe "#initialization" do

    it "takes type, wing loading and horsepower as arguements" do
      expect(my_plane).to be_a(Airplane)
    end
    it "creates readers for arguements" do
      expect(my_plane.type).to eq("cesna")
      expect(my_plane.wing_loading).to eq(10)
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    it "tells me to refuel" do
      my_plane.fuel = 0
      expect(my_plane.start).to eq("Need to refuel.")
    end

    it "sets started? variable to true if not already started" do
      my_plane.started = false
      expect(my_plane.start).to eq("Started plane.")
    end

    it "outputs feedback if already started" do
      my_plane.started = true
      expect(my_plane.start).to eq("Plane already started.")
    end
  end

  describe "#land" do
    it "tells me to refuel" do
      my_plane.fuel = 0
      expect(my_plane.land).to eq("Need to refuel.")
    end

    it "tells you to start if engine is off" do
      my_plane.started = false
      expect(my_plane.land). to eq("Take off first.")
    end

    it "lands the plane when flying" do
      my_plane.flying = true
      expect(my_plane.land).to eq("Plane landed.")
    end
  end

  describe "#takeoff" do
    it "tells me to refuel" do
      my_plane.fuel = 0
      expect(my_plane.takeoff).to eq("Need to refuel.")
    end

    it "sets the plane to flying if not already started" do
      my_plane.flying = false
      my_plane.started = false
      expect(my_plane.takeoff).to eq("Start the plane.")
    end

    it "sets the plane to flying if not already" do
      my_plane.flying = false
      my_plane.started = true
      expect(my_plane.takeoff).to eq("Taking off.")
    end

    it "sets the plane to flying if not already" do
      my_plane.flying = true
      my_plane.started = true
      expect(my_plane.takeoff).to eq("Already Flying.")
    end
  end
end
