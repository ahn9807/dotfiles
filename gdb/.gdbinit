add-auto-load-safe-path /home/ahn9807/eBPFLinux-Kernel/linux/scripts/gdb/vmlinux-gdb.py
add-auto-load-safe-path /home/ahn9807/eBPFLinux-Kernel/linux/.gdbinit
add-auto-load-safe-path /home/ahn9807/KAIST-CS492-Virtualization/projects/project1/.gdbinit
add-auto-load-safe-path /home/ahn9807/KeV/projects/project3/.gdbinit
add-auto-load-safe-path /home/ahn9807/KeV/projects/project4/.gdbinit
add-auto-load-safe-path /home/ahn9807/LVD-Kernel/lvd-linux/.gdbinit
add-auto-load-safe-path /home/ahn9807/vBPF-Kernel/linux/.gdbinit
source /home/ahn9807/temp/pwndbg/gdbinit.py
source /home/ahn9807/temp/splitmind/gdbinit.py

python
import splitmind
(splitmind.Mind()
  .tell_splitter(show_titles=True)
  .tell_splitter(set_title="Main")
  .right(display="backtrace", size="25%")
  .left(of="main", display="stack", size="30%", banner="top")
  .above(of="main",display="disasm", size="75%")
  .above(of="disasm", display="code", size="70%")
  .below(of="backtrace",display="legend", size="70%")
  .below(of="stack",display="regs", size="70%")
  .below(of="backtrace", cmd="ipython", size="30%")
).build(nobanner=True)
end
