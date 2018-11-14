function [standardTime] = calculateStandardTime(timeExpected, timeCalculated, variation)

standardTime = (timeExpected - timeCalculated)/variation;

end

