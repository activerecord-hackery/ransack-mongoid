module Ransack
  class Visitor
    def visit_and(object)
      nodes = object.values.map { |o| accept(o) }.compact
      nodes.inject(&:and)
    end

    def quoted?(object)
      case object
      when Arel::Nodes::SqlLiteral, Bignum, Fixnum
        false
      else
        true
      end
    end

    def visit_Ransack_Nodes_Sort(object)
      if object.valid?
        object.context.object.options[:sort] = {"#{object.name}": object.dir}
      else
        scope_name = :"sort_by_#{object.name}_#{object.dir}"
        scope_name if object.context.object.respond_to?(scope_name)
      end
    end
  end
end
