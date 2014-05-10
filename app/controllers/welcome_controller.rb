class WelcomeController < ApplicationController
  def index
    @speakers = Speaker.approved.order(:position)
    @posts =    Post.published.recent

		@day1 = [
			{ time: "10:00", title: "Accreditation, coffee" },
			{ time: "10:20", speaker: "Soft Serve" },
			{ time: "11:15", title: "Break", class: 'item-break' },
			{ time: "11:25", speaker: "Ben Lovell", title: "Building fast, testable and sane APIs with rails" },
			{ time: "12:10", title: "Break", class: 'item-break' },
			{ time: "12:20", speaker: "Marat Kamenshikov", company: 'Svitla' },
			{ time: "13:00", title: "Lunch", class: 'item-break' },
			{ time: "14:00", speaker: "Kirill Timofeev", company: 'DataArt', title: "A trip to Lambda land" },
			{ time: "14:45", title: "Break", class: 'item-break' },
			{ time: "14:55", speaker: "Evgeniy Pirogov", title: "Communication problems within complex projects: lessons learned from real life"  },
			{ time: "15:40", speaker: "Cofee break", title: "", class: 'item-break' },
			{ time: "16:15", speaker: "Javier Ramirez ", title: "Bigdata for small pockets using Redis, Google Bigquery and Apps Script" },
			{ time: "17:00", title: "Break", class: 'item-break'  },
			{ time: "17:10", speaker: "Bogdan Gusev ", title: "How to create parsers in ruby. Rails Router as example "}
		]

		@day2 = [
			{ time: "10:00", title: "Gathering, coffee" },
			{ time: "10:30", speaker: "Steve Klabnik", title: "Rust for Rubyists" },
			{ time: "11:15", title: "Break", class: 'item-break' },
			{ time: "11:25", speaker: "Alexandre de Oliveira", title: "Forget about classes, welcome objects" },
			{ time: "12:10", title: "Break", class: 'item-break' },
			{ time: "12:20", speaker: "D. R. Henner ", title: "Architecting Ecommerce Huge objects, how and when to refactor" },
			{ time: "13:00", title: "Lunch", class: 'item-break' },
			{ time: "14:00", speaker: "Jeremy Evans  ", title: "Deep Dive into Eager Loading Limited Associations" },
			{ time: "14:45", title: "Break", class: 'item-break' },
			{ time: "14:55", speaker: "Timofey Tsvetkov ", title: "GC in Ruby from 1.9 to 2.2" },
			{ time: "15:40", speaker: "Coffee break", title: "", class: 'item-break' },
			{ time: "16:15", speaker: "Konstantin Tennhard  ", title: "Large Scale Rails Applications" },
			{ time: "17:00", title: "Break", class: 'item-break' },
			{ time: "17:10", speaker: "Konstantin Tennhard  ", title: "ActionWidgets – View Components for Rails Applications" },
			{ time: "19:00", speaker: "Till 21:30", title: "BOWLING at \"Bolshevik\"", class: 'item-closing'}
		]
  end
end
