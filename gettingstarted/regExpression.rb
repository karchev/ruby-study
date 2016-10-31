
while line = gets
    if line =~ /Perl|Python/
        puts line.gsub(/Perl|Python.* /, 'Ruby ')
    end
end