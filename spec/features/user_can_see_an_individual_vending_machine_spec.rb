require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  scenario 'they see all of the snacks and the machine' do
    sam = Owner.create(name: "Sam's Snacks")
    machine_1 = sam.machines.create(location: '711', snacks: ["burger"])
    burger = Snack.create(name: "White Castle, Burger", price: 3.5, category: "food")
    cheetos = Snack.create(name: "Cheetos", price: 3.5, category: "food")
    machine_2 = sam.machines.create(location: 'NE corner', snacks: ["burger", "cheetos"])

    visit machine_path(machine_1)

    expect(page).to have_content(machine_1.location)
    expect(page).to have_content(burger.name)
    expect(page).to have_content(burger.price)
  end
end
