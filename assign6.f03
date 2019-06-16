program assign6
  implicit none
  integer :: i,j,k,l
  integer :: a,b
  character(len=200) :: input, output
  integer, dimension(:,:), allocatable :: start
  call get_command_argument(1, input)
  call get_command_argument(2, output)

  open(1, file= input)
  open(2, file= output)

  read(1,*)a, b
  allocate(start(a,b))

  do i = 1, a
        read(1,*) start(i, :)
  end do

  do i = 1, a
     do j = 1, b
        do k = 1, (b - 1)
           if (start(i, k) > start(i, k + 1)) then
              l = start(i, k)
              start(i, k) = start(i, k + 1)
              start(i, k + 1) = l
           endif
        end do
     end do
  end do

  do i = 1, a
     do j = i+1, a
        if (start(i,1) > start(j, 1)) then
           call switch(start, i, j, a, b)
        elseif (start(i,1) == start(j,1)) then 
           call ssort(start, i, j, a, b)
        endif
     end do
  end do

  do i = 1, a
     write(2,*) start(i,:)
  end do
  deallocate(start)
end program assign6

subroutine switch(x, level, num, c, d)
   implicit none
   integer, intent(in) :: level
   integer, intent(in) :: num
   integer, intent(in) :: c
   integer, intent(in) :: d
   integer, intent(inout) :: x(c,d)
   integer, dimension (c, d) :: temp
   integer :: m,n,o,p
    o = level
   p = num

   do m = 1, c
      do n = 1, d
          temp(m,n) = (10*m) + (3*n)
      end do
   end do

   do n = 1, d
      temp(o, n) = x(o, n)
      x(o, n) = x(p, n)
      x(p, n) = temp(o, n)
   end do
end subroutine switch

subroutine ssort (x, curr, next, row, col)
   implicit none
   integer, intent(in) :: curr
   integer, intent(in) :: next
   integer, intent(in) :: row
   integer, intent(in) :: col
   integer, intent(inout) :: x(row,col)
   integer, dimension (col) :: temp
   integer :: m,n,o,p
   o = curr
   p = next

   do n = 2, col
      if (x(o, n) > x(p, n)) then
         temp = x(o, :)
         x(o, :) = x(p, :)
         x(p, :) = temp
         exit
      endif
   end do
end subroutine ssort
