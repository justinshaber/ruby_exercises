ALPHA = ('A'..'Z').to_a + ('a'..'z').to_a
ALPHA_ROT = ('N'..'Z').to_a + ('A'..'M').to_a + ('n'..'z').to_a + ('a'..'m').to_a

def de_rot(str)
  str.each_char.map do |char|
    char =~ /[A-Za-z]/ ? ALPHA[ALPHA_ROT.index(char)] : char
  end.join
end

names = <<-TEXT
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
TEXT

puts de_rot(names)

