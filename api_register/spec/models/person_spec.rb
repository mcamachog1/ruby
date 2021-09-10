require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'returns the full name for a person' do
    person =  Person.create(firstname: "Maria", lastname: "Perez", country_id: 1, project_id:1, role_id:1)

    expect(person.full_name).to eq 'Maria Perez'
  end

  it 'returns person employee name' do 
    person =  Person.create(firstname: "Maria", employee: true, lastname: "Perez", country_id: 1, project_id:1, role_id:1)
    expect(person.employee_name).to eq "Maria"
    person.employee = false
    expect(person.employee_name).to eq ""
    
  end

end


