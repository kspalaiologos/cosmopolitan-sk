#!/usr/bin/tclsh
fconfigure stdout -encoding binary
fconfigure stdin -encoding binary
proc run {in out} {
    set p 127
    set mem {0}
    for {set i 0} {$i<0x10100} {incr i} {lappend mem 0}
    lset mem $p [expr ([lindex $mem $p] +1) % 256]
    set p [expr $p+1]
    lset mem $p [expr ([lindex $mem $p] +1) % 256]
    while {[lindex $mem $p] != 0} {
        set p [expr $p-1]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        set p [expr $p+1]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+1]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+101]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            set p [expr $p-92]
            lset mem $p [expr ([lindex $mem $p] +9) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 5
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +9) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+9]
            lset mem $p [expr ([lindex $mem $p] +12) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 6
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +12) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+8]
            lset mem $p 1
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +13) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +13) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 1
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +14) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +14) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+9]
            lset mem $p [expr ([lindex $mem $p] +9) % 256]
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-6]
                lset mem $p 0
                set p [expr $p+9]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-3]
                lset mem $p 0
                }
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+9]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+13]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+13]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +10) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+16]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-14]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+16]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-13]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+3]
            lset mem $p [expr ([lindex $mem $p] -2) % 256]
            set p [expr $p+3]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+3]
                set o [expr $p-4                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-4]
            set o [expr $p+4            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+9]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+4]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+3]
                set o [expr $p-4                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-4]
            set o [expr $p+4            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+9]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+10]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            puts -nonewline $out [format %c [lindex $mem $p]]
            lset mem $p 0
            set p [expr $p-3]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 10
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+2]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 10
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+10]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            puts -nonewline $out [format %c [lindex $mem $p]]
            lset mem $p 0
            set p [expr $p-3]
            lset mem $p 0
            set p [expr $p+16]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-14]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+16]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-20]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+21]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-19]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+21]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+10]
            lset mem $p [expr ([lindex $mem $p] +8) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *10) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            puts -nonewline $out [format %c [lindex $mem $p]]
            lset mem $p 0
            set p [expr $p-3]
            lset mem $p 0
            set p [expr $p+16]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-14]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+16]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-20]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+21]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-19]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+21]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +2) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+10]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            puts -nonewline $out [format %c [lindex $mem $p]]
            lset mem $p 0
            set p [expr $p-3]
            lset mem $p 0
            set p [expr $p+16]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-14]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+16]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-20]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+21]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-19]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+21]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+8]
            lset mem $p 0
            set p [expr $p+2]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +2) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+3]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+4]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+85]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-89]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+85]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-93]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+10]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+85]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-93]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+10]
            set o [expr $p-10            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+85]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-2]
                }
            set p [expr $p-89]
            lset mem $p 0
            set p [expr $p-4]
            lset mem $p [expr ([lindex $mem $p] -3) % 256]
            set p [expr $p+2]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-5]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+21]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-19]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+21]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+16]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-14]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+16]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-14]
            set c [read $in 1];if {[string length $c]==1} {lset mem $p [scan $c %c]}
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+3]
            lset mem $p [expr ([lindex $mem $p] +8) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *10) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set p [expr $p+7]
            lset mem $p 1
            set p [expr $p-7]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            set o [expr $p-5            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+10]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-10]
                set o [expr $p+3                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
                set o [expr $p-2                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-2]
            set o [expr $p+5            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p 11
            set p [expr $p+7]
            set o [expr $p-14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-14]
            set o [expr $p+14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                set p [expr $p+8]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+10]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *5) % 256]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p 1
            set p [expr $p-7]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            set o [expr $p-5            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+10]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-10]
                set o [expr $p+3                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
                set o [expr $p-2                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-2]
            set o [expr $p+5            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p 1
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-7]
                set o [expr $p-2                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-5                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-5]
                set o [expr $p+5                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+10]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+1]
                }
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+1]
                }
            set p [expr $p-6]
            lset mem $p 11
            set p [expr $p+7]
            set o [expr $p-14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-14]
            set o [expr $p+14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                set p [expr $p+8]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            set p [expr $p+3]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 3
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 5
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+5]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +2) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+10]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 5
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p-1]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set c [read $in 1];if {[string length $c]==1} {lset mem $p [scan $c %c]}
            lset mem $p 0
            set p [expr $p+16]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-14]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+16]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-20]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+21]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-19]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+21]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +11) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+10]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 3
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p+16]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-14]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+16]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-20]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+21]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-19]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+21]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+5]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+5]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-12]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +7) % 256]
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+3]
                set o [expr $p-4                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-4]
            set o [expr $p+4            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+9]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+8]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            lset mem $p 0
            set p [expr $p-12]
            set o [expr $p+12            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +7) % 256]
            set p [expr $p+8]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-14]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+14]
                set o [expr $p-15                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-15]
            set o [expr $p+15            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+9]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+9]
            set o [expr $p-9            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +2) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+18]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p+2]
            set o [expr $p-9            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            set o [expr $p-14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-9]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+7]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-7]
                set o [expr $p+9                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
                set o [expr $p-5                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-5]
            set o [expr $p+14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+5            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p 7
            set p [expr $p+7]
            set o [expr $p-14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-14]
            set o [expr $p+14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                set p [expr $p+8]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+2]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            lset mem $p 0
            set p [expr $p-12]
            set o [expr $p+12            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p+10]
            set o [expr $p-10            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 1
            set p [expr $p+3]
            lset mem $p 1
            set p [expr $p+2]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *6) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+9]
            lset mem $p [expr ([lindex $mem $p] +8) % 256]
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +7) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+8]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+3]
                set o [expr $p-4                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-4]
            set o [expr $p+4            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+9]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+8]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            lset mem $p 0
            set p [expr $p-12]
            set o [expr $p+12            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set p [expr $p+8]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-14]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+14]
                set o [expr $p-15                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-15]
            set o [expr $p+15            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+9]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+8]
            lset mem $p 0
            set p [expr $p+9]
            set o [expr $p-9            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +2) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+18]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set p [expr $p+9]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-15]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+15]
                set o [expr $p-16                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-16]
            set o [expr $p+16            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-3]
                lset mem $p 0
                set p [expr $p+9]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                }
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+18]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            set p [expr $p-10]
            lset mem $p 0
            set p [expr $p+10]
            set o [expr $p-10            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-14]
            set o [expr $p+14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-6]
                lset mem $p 0
                set p [expr $p+9]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+4]
                set o [expr $p-4                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                }
            set p [expr $p-4]
            set o [expr $p+4            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+19]
            lset mem $p 0
            set p [expr $p-14]
            set o [expr $p+14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+3]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            lset mem $p 0
            set p [expr $p-12]
            set o [expr $p+12            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+11]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+21]
            lset mem $p 0
            set p [expr $p-16]
            set o [expr $p+16            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p+9]
            set o [expr $p-9            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+18]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+3]
            lset mem $p 2
            set p [expr $p+3]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 3
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +2) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 2
            set p [expr $p+3]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 3
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+5]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +4) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+5]
            lset mem $p 0
            set p [expr $p+2]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p+10]
            set o [expr $p-10            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-14]
            set o [expr $p+14            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +5) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *7) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +5) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p-2]
            lset mem $p 0
            set p [expr $p+2]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p+11]
            set o [expr $p-11            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-15            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-15]
            set o [expr $p+15            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p 2
            set p [expr $p+3]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 3
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p-1]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +2) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            lset mem $p 0
            set p [expr $p+2]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p+13]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-17            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-17]
            set o [expr $p+17            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p-2]
            lset mem $p 0
            set p [expr $p+2]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p+11]
            set o [expr $p-11            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-15            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-15]
            set o [expr $p+15            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *4) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *4) % 256]
            lset mem $p 0
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *4) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set o [expr $p+1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *4) % 256]
        lset mem $p 0
        set p [expr $p+1]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 1
            set p [expr $p+3]
            lset mem $p 1
            set p [expr $p+2]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *4) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *4) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *4) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set o [expr $p+1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *4) % 256]
        lset mem $p 0
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+9]
            lset mem $p [expr ([lindex $mem $p] +8) % 256]
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +4) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+8]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *9) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *9) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+6]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+5]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            set p [expr $p+7]
            lset mem $p 1
            set p [expr $p-10]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+3]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+4]
                while {[lindex $mem $p] != 0} {
                    lset mem $p [expr ([lindex $mem $p] -1) % 256]
                    set p [expr $p-1]
                    }
                set p [expr $p+1]
                }
            set p [expr $p-2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+4]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-10]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set o [expr $p-3                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-2]
                }
            set p [expr $p+3]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-4]
            lset mem $p 8
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-15]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                set p [expr $p+8]
                set o [expr $p-8                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p-7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p-7]
                set o [expr $p+7                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+12]
                }
            set p [expr $p-5]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            lset mem $p 0
            set p [expr $p-10]
            set o [expr $p+10            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+9]
            set o [expr $p-9            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *9) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *9) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +7) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 6
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +7) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+5]
            lset mem $p 0
            set p [expr $p+12]
            set o [expr $p-12            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +7) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +7) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+9]
            set o [expr $p-9            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +7) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +2) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 1
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +7) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +2) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-2]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +7) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] +3) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 6
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +7) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *8) % 256]
        lset mem $p 0
        set p [expr $p-1]
        lset mem $p [expr ([lindex $mem $p] +3) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+5]
            lset mem $p 0
            set p [expr $p+12]
            set o [expr $p-12            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-13]
            set o [expr $p+13            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+4]
            lset mem $p 0
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-3]
            set o [expr $p+3            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+6]
            lset mem $p [expr ([lindex $mem $p] +6) % 256]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *10) % 256]
            lset mem $p 0
            set p [expr $p-1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+6]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+7]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-11]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+6]
            set o [expr $p-6            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 2
            set p [expr $p-9]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+8]
            set o [expr $p-8            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-7]
            set o [expr $p+7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+7]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +6) % 256]
        set o [expr $p-1        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *10) % 256]
        lset mem $p 0
        set p [expr $p-4]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-10]
            lset mem $p 0
            set p [expr $p+10]
            set o [expr $p-10            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-15]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +8) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+17]
            lset mem $p 0
            set p [expr $p+5]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+5]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-20]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+21]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-19]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+21]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +2) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+5]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+10]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+85]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-93]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+10]
            set o [expr $p-10            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+85]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-90]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+7]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+85]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-90]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+7]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+85]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-2]
                }
            set p [expr $p-98]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+21]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-19]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+21]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p+1]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p-3]
        while {[lindex $mem $p] != 0} {
            set p [expr $p+3]
            lset mem $p 0
            set p [expr $p-1]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            }
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        set p [expr $p+2]
        lset mem $p [expr ([lindex $mem $p] +1) % 256]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-1]
            set o [expr $p+1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            set o [expr $p+2            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *255) % 256]
            lset mem $p 0
            set p [expr $p+2]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p+2]
                set o [expr $p-1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                set o [expr $p+1                ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
                lset mem $p 0
                set p [expr $p+1]
                lset mem $p 0
                }
            set p [expr $p-1]
            lset mem $p 0
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        while {[lindex $mem $p] != 0} {
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] +1) % 256]
            set p [expr $p+5]
            lset mem $p 0
            set p [expr $p+3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+7]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+85]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-90]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+7]
            set o [expr $p-7            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p+85]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-93]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+95]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+2]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p-1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p+1]
            set o [expr $p-1            ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
            lset mem $p 0
            set p [expr $p-4]
            while {[lindex $mem $p] != 0} {
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                set p [expr $p-2]
                }
            set p [expr $p-98]
            lset mem $p 0
            set p [expr $p+1]
            lset mem $p 0
            set p [expr $p+21]
            while {[lindex $mem $p] != 0} {
                set p [expr $p+2]
                }
            set p [expr $p-2]
            lset mem $p [expr ([lindex $mem $p] -1) % 256]
            set p [expr $p+1]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-3]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p-2]
                    }
                set p [expr $p-19]
                lset mem $p [expr ([lindex $mem $p] +1) % 256]
                set p [expr $p+21]
                while {[lindex $mem $p] != 0} {
                    set p [expr $p+2]
                    }
                set p [expr $p+1]
                lset mem $p [expr ([lindex $mem $p] -1) % 256]
                }
            set p [expr $p-3]
            while {[lindex $mem $p] != 0} {
                set p [expr $p-2]
                }
            set p [expr $p-11]
            lset mem $p 0
            set p [expr $p-7]
            }
        set p [expr $p-2]
        set o [expr $p+2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p+2]
        set o [expr $p-2        ];lset mem $o [expr ([lindex $mem $o] + [lindex $mem $p] *1) % 256]
        lset mem $p 0
        set p [expr $p-1]
        }
    return 0
}
run stdin stdout
