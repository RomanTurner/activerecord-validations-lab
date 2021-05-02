class PostValidator < ActiveModel::Validator
    def validate(record)
       
     if  !record.include? "smoky"
       record.errors.add :base, 'This record is invalid'
     end 
    end

end