class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.references :form, foreign_key: true
      t.integer :position
      t.string :entity_type
      t.integer :entity_id
      t.timestamps
    end

    create_table :header_entities do |t|
      t.references :record, foreign_key: true
      t.string :heading
      t.string :sub_header
      t.json :settings
      t.timestamps
    end

    create_table :name_entities do |t|
      t.references :record, foreign_key: true
      t.string :label, default: "Name"
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.json :settings
      t.timestamps
    end

    create_table :file_upload_entities do |t|
      t.references :record, foreign_key: true
      t.string :label, default: "Upload a file"
      t.string :s3_url
      t.json :settings
      t.timestamps
    end

    create_table :address_entities do |t|
      t.references :record, foreign_key: true
      t.string :label, default: "Address"
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :zipcode
      t.json :settings
      t.timestamps
    end

    create_table :text_field_entities do |t|
      t.references :record, foreign_key: true
      t.string :label
      t.json :settings
      t.timestamps
    end

    create_table :drop_down_entities do |t|
      t.references :record, foreign_key: true
      t.string :label
      t.json :choices
      t.json :settings
      t.timestamps
    end

  end
end
