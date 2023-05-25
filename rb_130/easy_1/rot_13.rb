def reverse_rot(str)
  str.each_char.reduce('') do |new_str, char|
    new_str << decrypt(char)
  end
end

def decrypt(char)
  case char
  when ('A'..'M'), ('a'..'m') then (char.ord + 13).chr
  when ('N'..'Z'), ('n'..'z') then (char.ord - 13).chr
  else char
  end
end

str = <<-HEREDOC
Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu
HEREDOC

puts reverse_rot(str)
