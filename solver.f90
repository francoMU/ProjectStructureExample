
module ConverterModule

   use :: iso_c_binding
   implicit none

   public add_interface

   contains

   subroutine add_interface(a,b,c,n) bind(c, name = "add_interface")

      integer, intent(in) :: n
      real(c_double), intent(in), dimension(n) :: a
      real(c_double), intent(in), dimension(n) :: b
      real(c_double), intent(out), dimension(n) :: c

      call add(a,b,c)

   end subroutine

   subroutine add(a,b,c)

      real(kind = 8), intent(in), dimension(:) :: a
      real(kind = 8), intent(in), dimension(size(a)) :: b
      real(kind = 8), intent(out), dimension(size(a)) :: c

      c = a + b

   end subroutine

end module
