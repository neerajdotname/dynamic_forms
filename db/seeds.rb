class SampleData

  def initialize
    create_user!
    create_form!
    create_personal_info_header!
    create_name_entity!
    create_file_upload_entity!
    create_personal_address_entity!
    create_work_info_header!
    create_text_field_entity!
    create_company_address_entity!
    create_drop_down_entity!
  end

  private

  def create_user!
    User.create!(name: 'Suraj')
  end

  def create_form!
    User.first.forms.create!(title: 'Employee Details Form', status: "draft")
  end

  def create_personal_info_header!
    create_header_entity!(label: "Personal Info", position: 1)
  end

  def create_name_entity!
    record = form.records.create!(position: 2, entity_type: NameEntity.class.name)
    entity = NameEntity.create!(label: "Name", record_id: record.id)
    record.update!(entity_id: entity.id)
  end

  def create_file_upload_entity!
    record = form.records.create!(position: 3, entity_type: FileUploadEntity.class.name)
    entity = FileUploadEntity.create!(label: "Upload your picture", record_id: record.id)
    record.update!(entity_id: entity.id)
  end

  def create_personal_address_entity!
    create_address!(position: 4, label: "Personal Address")
  end

  def create_work_info_header!
    create_header_entity!(label: "Work Info", position: 5)
  end

  def create_text_field_entity!
    record = form.records.create!(position: 5, entity_type: TextFieldEntity.class.name)
    entity = TextFieldEntity.create!(label: "Name of the company", record_id: record.id)
    record.update!(entity_id: entity.id)
  end

  def create_company_address_entity!
    create_address!(position: 6, label: "Company Address")
  end

  def create_address!(options)
    record = form.records.create!(position: options[:position], entity_type: AddressEntity.class.name)
    entity = FileUploadEntity.create!(label: options[:label], record_id: record.id)
    record.update!(entity_id: entity.id)
  end

  def create_drop_down_entity!
    record = form.records.create!(position: 7, entity_type: DropDownEntity.class.name)
    entity = DropDownEntity.create!(label: "Role in the company",
                                    record_id: record.id,
                                    choices: { "1" => "Executive",
                                               "2" => "Senior level",
                                               "3" => "Mid level",
                                               "4" => "Junior"})
    record.update!(entity_id: entity.id)
  end

  def create_header_entity!(options)
    record = form.records.create!(position: options[:position], entity_type: HeaderEntity.class.name)
    entity = HeaderEntity.create!(heading: options[:label], record_id: record.id)
    record.update!(entity_id: entity.id)
  end

  def form
    Form.first
  end

end

SampleData.new