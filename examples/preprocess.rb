#!/usr/bin/env ruby

# file preprocessor without the side effects of cpp.
# reads an input file.  spits out each line.  for each line with 
#include "file", it includes the contents of that file
#
# usage: ./preprocess.rb 90-cloudalytics-pre.json > 91-out.json
ARGF.each do |line|
    if m = /^#include "(.*)"/.match(line)
        file = m[1]
        File.open(file, "r").each_line do |l|
            puts l
        end
    else
        puts line
    end
end

