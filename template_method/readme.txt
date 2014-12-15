--- Template Method Pattern ---

### Use ###

Tamplate Method can be use to tackle the following problem: Imagine a complex
piece of code - an algorithm or hairy system code - and somewhere in the middle
of this code there is a bit that needs to vary, sometimes this piece of code
wants to do this and sometimes wants to do that.


### Scenario ###

Assuming a systems that generates monthly reports in varius formats, for example
HTML and plain text. To achieve that it is a good idea to set the generic steps
of this process:

1. Output any header information required for the specific format.

2. Output the title

3. Output each line of the actual report

4. Output any trailing stuff required by the format

With this sequence on mind a good design choice could be based on abstraction.
By defining an abstract base class that encapsulates a master method which
performs the basic steps listed above and leave the details of each step for the
concrete classes. This method is called - Template Method - (Check the class
diagram in the PDF file)

- Note - In Ruby there are no abstract classes or methods. To achieve that just
raise an exception as body of a method:

    def output_line
      raise 'Called abstract method: output_line'
    end


### Implementation ###

The implementation of a program such this can be very complicated. However, the
point of this tutorial is to explain the theory that need be applied in
situations like the one described above.

By reading the code, it is very easy to understan the functionality of it.
Nevertheless, some methods of the super class have been named as - Hook Method -
A Hook method is a non-abstract method (which belongs to the Template Method)
that can be overriden in the concrete class. Hook methods permit the subclass to
choose:

1. To override the base implementation and do something different.

2. Simply accept the base implementation.

Usually the default implementation of a hook method is empty.


### Drawbacks ###

The design is based on inheritance that produce two very important disadvantages:

1. The subclasses of the system are tangled up to the supperclass, it is the
nature of the relationship.

2. Inheritance based techniques are limites the runtime flexibility. In this
example if a particular format of the report is selecte it is difficult to
change it. In order to switch to a different format it is necessary the
instantiation of a new object.
