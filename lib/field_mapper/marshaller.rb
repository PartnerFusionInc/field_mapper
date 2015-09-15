require "gson"

module FieldMapper
  module Marshaller

    OPTIONS = {
      indent: 0,
      circular: false,
      class_cache: true,
      escape: :json,
      time: :unix,
      create_id: "field_mapper_json_create"
    }

    def marshal(value)
      Gson::Encoder.new.encode prep_value(value), OPTIONS
    end

    def unmarshal(value)
      Gson::Encoder.new.decode value, OPTIONS
    end

    private

    def prep_value(value)
      return value.map { |v| prep_value v } if value.is_a?(Array)
      return value.to_hash if value.is_a?(HashWithIndifferentAccess)
      value
    end

  end
end
