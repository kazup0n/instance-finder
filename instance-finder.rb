require 'aws-sdk'
require 'formatador'
class Instance < Struct.new("Instance", :instance_id, :status, :tags)


	def name
		tags['Name']
	end

	def start_instances
		"aws ec2 start-instances --instance-ids=#{instance_id}"
	end

	def to_h
		{
			instance_id: instance_id,
			name: name,
			status: status,
			start: start_instances
		}
	end

end

client = Aws::EC2::Client.new
instances = client.describe_instances.reservations.flat_map do |reservation|
	reservation.instances.map do |instance|
		Instance.new(instance.instance_id,instance.state.name, Hash[*instance.tags.map { |tag| [tag.key, tag.value]}.flatten])
	end
end.sort_by(&:name)

puts "# of instances: #{instances.size}"
Formatador.display_table(instances.map(&:to_h))


