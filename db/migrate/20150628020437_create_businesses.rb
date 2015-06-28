class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|

      t.string :category, comment: '企业类别'   
      t.string :name, null: false, default: 'business_name', comment: '企业名称'

      t.timestamps null: false
    end
  end
end
