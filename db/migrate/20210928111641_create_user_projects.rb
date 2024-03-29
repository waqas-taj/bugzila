# frozen_string_literal: true

class CreateUserProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_projects do |t|
      t.references :user, foreign_key: true, null: false
      t.references :project, foreign_key: true, null: false

      t.timestamps
    end
  end
end
