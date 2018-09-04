#! usr/bin/env ruby
# encoding: UTF-8

# コードブロックを使って、ファイルを読んで文字列を返す。
# 変数のスコープを制限することができる。
def useCodeBlock
    open("practice02.rb") do | file |
        file.readlines
    end
end

# コードブロックを使用しないで、ファイルを読んで文字列を返す。
def unuseCodeBlock
    file = open("practice02.rb")
    file.readlines
end

if __FILE__ == $0
    # puts useCodeBlock
    # puts unuseCodeBlock
end
