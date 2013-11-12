class A
  def public_method
    "public_method"
  end

  def public_protected_method
    protected_method
  end

  def public_private_method
    private_method
  end

  def inner_protected_method a
    a.protected_method
  end

  def inner_private_method a
    a.private_method
  end

  protected
    def protected_method
      "protected_method"
    end

  private
    def private_method
      "private_method"
    end
end

class B < A
end

  a = A.new
  b = B.new

  #------------------------------#

  begin
    puts ["a.public_method", a.public_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["a.protected_method", a.protected_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["a.private_method", a.private_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end

  #------------------------------#

  begin
    puts ["b.public_method", b.public_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["b.protected_method", b.protected_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["b.private_method", b.private_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end

  #------------------------------#

  begin
    puts ["a.public_protected_method", a.public_protected_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["a.public_private_method", a.public_private_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["b.public_protected_method", b.public_protected_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["b.public_private_method", b.public_private_method].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end

  #------------------------------#

  begin
    puts ["a.inner_protected_method b", a.inner_protected_method(b)].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["a.inner_private_method b", a.inner_private_method(b)].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["b.inner_protected_method a", b.inner_protected_method(a)].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["b.inner_private_method a", b.inner_private_method(a)].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end

  #------------------------------#

  begin
    puts ["a.send(:protected_method)", a.send(:protected_method)].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["a.send(:private_method)", a.send(:private_method)].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["b.send(:protected_method)", b.send(:protected_method)].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
  begin
    puts ["b.send(:private_method)", b.send(:private_method)].join(" - ")
  rescue Exception => e  
    puts ["ERROR - ", e.message].join 
  end
