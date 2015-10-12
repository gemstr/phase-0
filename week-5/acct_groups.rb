copperheads = ["Joshua Abrams", "Syema Ailia","Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo","Danielle Cameron","Celeste Carter", "Eran Chazan", "Jonathan Chen","Un Choi", "Keven Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburng", "Jeffery George","Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinki", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadetter Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhil", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]


#Pseudo code
# Input: array list of names
# Output: Hash grouped in Group name/ array(key)

def acct_grouper(list)
  grouped_array = []
  list.each_with_index do |name, i|
    if (i % 5 == 0) || (i % 5 >= 4)
      grouped_array << [ list[0],list[1],list[2],list[3],list[4] ]
    elsif (i % 4 == 0) || (i % 4 >= 3)
      grouped_array << [ list[0],list[1],list[2],list[3] ]
    end
  end
  grouped_array

end

p acct_grouper(copperheads)

=begin
Release 6: Reflect
What was the most interesting and most difficult part of this challenge?
-  The most difficult and interesting park of this challenge was coming up with working pseudocode solution.(paper)
Do you feel you are improving in your ability to write pseudocode and break the problem down?
The more I have a 'feel' for the Ruby environnemt, my ability  to pseudocode gets better. I guess it's a matter of know what I'm capable of in Ruby sor far.
Was your approach for automating this task a good solution? What could have made it even better?
- I believe simple logic is what got me a working solution.
What data structure did you decide to store the accountability groups in and why?
- Basically a hash. An array of arrays.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I couldn't refactor.

=end