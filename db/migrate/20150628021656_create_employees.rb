class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|

      t.string :name, null: false, default: 'employess_name', comment: '员工姓名'
      
      t.string :sex, null: false, default: '0', comment: '性别 0-默认 1-男  2-女'
      
      t.string :age, null: false, default: '0', comment: '年龄'
      
      t.string :phone, null: false, default: '136xxxxxxxx', comment: '手机号'
      
      t.string :email, null: false, default: 'xxx@xxx.com', comment: '邮箱' 

      t.references :business, :comment => '关联企业'

      t.timestamps null: false
    end
  end
end
