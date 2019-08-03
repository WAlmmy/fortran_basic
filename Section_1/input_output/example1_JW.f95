PROGRAM example
IMPLICIT NONE
INTEGER :: number_of_years, number_of_compounds_per_year
REAL :: beginning_value,end_value,interest_rate

PRINT*;PRINT*
PRINT*,"Please enter the start value in GBP:   "
READ*,beginning_value
PRINT*,"Please enter the interest rate as a fraction:   "
READ*,interest_rate
PRINT*,"Please enter the number of years as an INT:   "
READ*,number_of_years
PRINT*,"Please enter the number of times the interest is compounded per year as an INT:   "
READ*,number_of_compounds_per_year

end_value = beginning_value*(1+(interest_rate/number_of_compounds_per_year))**(number_of_years*number_of_compounds_per_year)

PRINT*,"The end value is:   ", end_value
PRINT*,"Press RETURN to exit... "

END PROGRAM example