select * from kleren where kleur = "zwart" OR kleur = "blauw";

select * from kleren where kleur = "zwart" OR kleur = "wit";

select * from kleren where kledingtype = "broek" OR kledingtype = "tshirt";

select * from kleren where kledingtype = "broek" AND kleur = "zwart" OR kleur = "wit";

select * from kleren where kledingtype = "broek" AND kledingtype = "overhemd" OR kleur = "wit" OR kleur = "zwart";

select * from kleren where kledingtype = "tshirt" AND kledingtype = "overhemd" OR kleur = "rood" OR kleur = "blauw";

select * from huisdieren where eigenaar = 'joep' AND eigenaar = 'marije' IF geboortedatum = 1 AND typedier = 'hamster';

select * from huisdieren where eigenaar = 'joep' OR eigenaar = 'marije' AND geboortedatum = 1 AND typedier = 'hamster';