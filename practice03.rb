#! /usr/bin/env ruby
# encoding: UTF-8

class Tree
    attr_accessor :children, :node_name

    def initialize(name, children = [])
        @children = children
        @node_name = name
    end

    def visit_all(&block)
        visit &block
        children.each { |child| child.visit_all &block }
    end

    def visit(&block)
        block.call self
        # yield self
    end
end

# ツリーのトップレベルのデータを先頭のに持つ。
# ノードの名前とそのノードの子孫の情報を持つ。
# Key = ノードの名前
# Value = 子孫
class RefactoringTree
    include Enumerable
    attr_accessor :children, :node_name

    def initialize(tree = {})
        tree.each do | node_name, children |
            
        end
    end

    def visit_all(&block)
        visit &block
        children.each { | child | child.visit_all(&block) }
    end

    def visit(&block)
        block.call self
    end

    def each(&block)
        @children.each &block if @children == []
    end
end


if __FILE__ == $0
    # ruby_tree1 = Tree.new('Ruby', [Tree.new('Reia'), Tree.new('MacRuby')])
    # ruby_tree2 = Tree.new('grandpa', [Tree.new('dad', [Tree.new('child1', []), Tree.new('child2', [])]), Tree.new('uncle', [Tree.new('child3', []), Tree.new('child4', [])])])
    # puts "Visiting a node"
    # ruby_tree2.visit { |node| puts node.node_name }
    # puts
    #
    # puts "Visiting entire tree"
    # ruby_tree2.visit_all { |node| puts node.node_name }

    ruby_tree = RefactoringTree.new({ 'Ruby' => { 'Reia' => [], 'MacRuby' => [] } } )
    ruby_tree.visit_all { | node | puts node.node_name }
end
