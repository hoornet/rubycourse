require 'java'

module JavaLang
  include_package "java.lang"
end

module JavaSql
  include_package 'java.sql'
end

begin
  JavaLang::Class.forName("com.mysql.jdbc.Driver").newInstance
  conn = JavaSql::DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ruby?user=root");
  stmt = conn.createStatement
  rs = stmt.executeQuery("select name from student")
  while (rs.next) do
    puts rs.getString("name")
  end
  rs.close
  stmt.close
  conn.close()
rescue JavaLang::ClassNotFoundException
  puts "ClassNotFoundException"
rescue JavaSql::SQLException
  puts "SQLException"
end
