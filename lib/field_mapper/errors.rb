module FieldMapper
  class StandardNotSet        < StandardError; end
  class StandardFieldNotFound < StandardError; end
  class StandardValueNotFound < StandardError; end
  class StandardMismatch      < StandardError; end
  class TypeNotSpecified      < StandardError; end
  class TypeNotSupported      < StandardError; end
  class FieldNotDefined       < StandardError; end
  class InvalidPlatType       < StandardError; end
  class InvalidListType       < StandardError; end
  class InvalidListValue      < StandardError; end
  class InvalidMarshal        < StandardError; end
end
