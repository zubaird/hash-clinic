require 'spec_helper'

describe 'querying medical data' do
  let(:data) { medical_data } # this is in your support directory

  describe 'getting doctor information' do
    it "gets all the first names of the doctors" do
      expect(doctors_first_names(data)).to match_array([
        'Dilys', 'Miriam', 'Augustus'
      ])
    end

    xit "gets all the last names of the doctors" do
      expect(doctors_last_names(data)).to match_array([
        'Derwent', 'Strout', 'Pye'
      ])
    end

    xit "returns all the ids of the doctors" do
      expect(doctors_ids(data)).to match_array([
        '123GS2', 'JS12WS', '42443W'
      ])
    end
  end

  describe 'getting clinic data' do
    it "gets all the names of the clinics" do
      expect(clinic_names(data)).to match_array([
        "Privet Medical Center", "Mongo's Day Care Facility"
      ])
    end

    it "gets all the clinic ids (their keys)" do
      expect(clinic_ids(data)).to match_array([
        3002, 3008
      ])
    end
  end

  describe 'associating data' do
    it "reports the doctors per clinic" do
      expect(clinic_doctors(data, 3002)).to match_array([
        {
          first_name: 'Miriam',
          last_name: 'Strout',
          id: 'JS12WS'
        },
        {
          first_name: "Augustus",
          last_name: 'Pye',
          id: '42443W'
        }
      ])

      # how would you write this with the other clinic data?
    end

    xit "reports the clinic for a given doctor id" do
      expect(doctor_clinics(data, 'JS12WS')).to match_array([
        {
          name: "Privet Medical Center",
          doctors: ['JS12WS', '42443W']
        }
      ])
    end

    xit "returns a list of just the names of the doctors clinics" do
      expect(doctor_clinic_names(data, 'JS12WS')).to match_array([
        'Privet Medical Center'
      ])
    end

    xit "returs as list of just the ids of the clinic (the keys) for a given doctor" do
      expect(doctorn_clinic_ids(data, 'JS12WS')).to match_array([
        3002
      ])
    end
  end
end
