class Business < ActiveRecord::Base

	has_many :employee

	# 创建企业
	def self.create_business( options, response_status = nil )

		response_status = ResponseStatus.default

		begin

			if options.present?
				self.transaction do

					business = self.new
					business.name = options[:name]
					business.category = options[:category]
					business.save!

					response_status.code = ResponseStatus::Code::SUCCESS
					response_status.message = '创建企业成功'
				end
			else
				response_status.code = ResponseStatus::Code::ERROR
				response_status.message = '参数缺失'
			end

		rescue => e

			Rails.logger.error e

			response_status.code = ResponseStatus::Code::ERROR
			response_status.message = '创建企业异常'

		end

		response_status
	end

	# 查询企业
	def self.query_business( options, response_status = nil )

		response_status = ResponseStatus.default

		if options.present? && options[:name].present?
			query = self.where( name: options[:name] ).all
			response_status.code = ResponseStatus::Code::SUCCESS
			response_status.message = '查询企业数据成功'
		else
			response_status.code = ResponseStatus::Code::SUCCESS
			response_status.message = '参数缺失'
		end

		return query, response_status
	end

end
