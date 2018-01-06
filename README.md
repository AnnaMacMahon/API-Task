# API-Task
Integer addition question generator:

Ruby 2.4.3

This code is comprised of a main body, "main_code.rb", which makes use of the Class "question_class.rb", and functions "question_function.rb" and "question_server.rb". 

When the code is run, the client will be able to generate a random integer addition question as well as four options for possibe answers, of which one will be the correct answer. They can access this by visiting the URL:
localhost:2345/getMathsQuestion?/<lower>/<upper>
where [<lower>,<upper>] is the range in which the client would like the answers to lie.
If the parameters entered by the client lie outside the range (0,1000000), they will see an arror message instead of a question.
