require 'csv'

class List
  
  def initialize(task)
    @task = task
  end

  def delete
    @delete_tasks = CSV.read("todo_list.csv")
    p @del = @delete_tasks.delete_at(@task.join[-1].to_i-1).join
    CSV.open("todo_list.csv", "wb") do |csv| @delete_tasks.each {|x|
      csv << x}     
      end
    puts "Eliminaste la tarea: \"#{@del[4..-1]}\" de tu lista."
  end 

  def add
    CSV.open("todo_list.csv", "ab") do |csv|
      csv << @task
      end
    puts "Agregaste la tarea: \"#{@task.join[4..-1]}\" a tu lista."
  end

  def index
    @index_tasks = CSV.read("todo_list.csv")
    @index_tasks.each_with_index{|x, i| puts "#{i+1}. " +  "#{x.join}"}
  end

  def complete
    @complete_tasks = CSV.read("todo_list.csv")
    @comp = @complete_tasks[@task.join[-1].to_i-1][0].gsub!(/\[ \] /, "[x] ")
    CSV.open("todo_list.csv", "wb") do |csv| @complete_tasks.each {|x|
      csv << x}     
      end
    if @comp == nil
      puts "Ya completaste esa tarea. Puedes borrarla si lo deseas."    
    else
      puts "Completaste la tarea: \"#{@comp[4..-1]}\"."
    end
    index
  end

end

line = ARGV
command = line.slice!(0)
line.insert(0,"[ ]")
task = Array.new(1,line.join(" "))
list = List.new(task)

case command
  when "add" then list.add
  when "index" then list.index
  when "delete" then list.delete
  when "complete" then list.complete
end





