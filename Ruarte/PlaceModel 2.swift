//
//  PlaceModel 2.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 27/09/24.
//


//
//  DeetalhesLugares.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 07/07/24.
//

import Foundation
import SwiftUI
struct PlaceModel{
    var title: String
    var description: String
    var navTitle: String
    var location: String
    var images: [String]
    var beenVisited: Bool
    var isFavorite: Bool
    var category: String
    var category2: String
//    var isHeartFilled: Bool
    
    init(title: String, description: String, navTitle: String, location: String, images: [String], beenVisited: Bool = false, isFavorite: Bool = false, category: String, category2: String) {
        self.title = title
        self.description = description
        self.navTitle = navTitle
        self.location = location
        self.images = images
        self.beenVisited = beenVisited
        self.isFavorite = isFavorite
        self.category = category
        self.category2 = category2
//        self.isHeartFilled = isHeartFilled
    }
}

///brennand
let allPlaces = [
    PlaceModel(title: "Instituto Ricardo\nBrennand", description: "O Instituto Ricardo Brennand, localizado em Recife, é um importante centro cultural conhecido por sua vasta coleção de arte e objetos históricos, incluindo armas brancas, obras de arte brasileira e internacional, e documentos raros.\nCom uma arquitetura imponente que lembra um castelo medieval, o instituto oferece exposições permanentes e temporárias, além de eventos culturais e programas educacionais, proporcionando aos visitantes uma experiência enriquecedora e educativa sobre a história e as artes.", navTitle: "Ricardo Brennand", location: "R. Mário Campelo, 700 - Várzea, Recife", images: ["https://catracalivre.com.br/cdn-cgi/image/f=auto,q=60,width=960,height=99999,fit=scale-down/wp-content/uploads/2019/10/instituto-ricardo-brennand13.jpg","https://catracalivre.com.br/cdn-cgi/image/f=auto,q=60,width=960,height=99999,fit=scale-down/wp-content/uploads/2019/10/instituto-ricardo-brennand12.jpg", "https://catracalivre.com.br/cdn-cgi/image/f=auto,q=60,width=960,height=99999,fit=scale-down/wp-content/uploads/2019/10/instituto-ricardo-brennand2.jpg"], beenVisited: true, isFavorite: false, category: "Artes Visuais", category2: "Recife"),
                 PlaceModel(title: "Museu do Estado \nde Pernambuco", description: "O Museu do Estado de Pernambuco, localizado no Recife, é uma instituição cultural que abriga uma rica coleção de arte pernambucana e brasileira, incluindo pinturas, esculturas e objetos históricos. Instalado em um prédio histórico, o museu oferece exposições permanentes e temporárias, além de atividades educativas e culturais para o público, destacando a diversidade e a riqueza da história e da cultura de Pernambuco.", navTitle: "MEPE", location: "Av. Rui Barbosa, 960 - Graças, Recife - PE", images: ["https://cdn.folhape.com.br/img/pc/450/450/dn_arquivo/2021/08/palacete-do-seculo-xix-1.jpg", "https://s3-sa-east-1.amazonaws.com/img.guiadasartes.com.br/eve/626-museu-do-estado-de-pernambuco-/pEa6xJ2z.300x300.jpg","https://s3-sa-east-1.amazonaws.com/img.guiadasartes.com.br/eve/626-museu-do-estado-de-pernambuco-/5pQ5rEi3.jpg"], beenVisited: true, isFavorite: false, category: "Artes Visuais", category2: "Recife"),
                 PlaceModel(title: "Museu de Arte\nContemporânea de \nPernambuco", description: "O Museu de Arte Contemporânea de Pernambuco (MAC-PE), inaugurado em 23 de dezembro de 1966 no sítio histórico de Olinda, abriga mais de 4 mil obras de diversas técnicas, épocas e estilos, desde o academicismo francês até a arte contemporânea. Parte da rede da Fundação do Patrimônio Histórico e Artístico de Pernambuco (Fundarpe).", navTitle: "MAC", location: "Rua 13 de Maio, 149, Varadouro – Olinda, PE", images: ["https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Museu_de_Arte_Contemporânea_de_Pernambuco_02.jpg/1920px-Museu_de_Arte_Contemporânea_de_Pernambuco_02.jpg","https://ilamdir.org/blobs/ilamdir/w300h300-cropped/328/2019/51/4768147970_4151b21681_b.jpg", "https://upload.wikimedia.org/wikipedia/commons/9/94/Museu_de_Arte_Contemporânea_de_Pernambuco_03.jpg"], category: "Artes Visuais", category2: "Olinda"),
                 PlaceModel(title: "Feira de Caruaru", description: "A Feira de Caruaru, em Pernambuco, originou-se no final do século XVIII, quando uma capela foi construída em uma rota de gado, servindo como ponto de encontro para vaqueiros e comerciantes. \nCom o tempo, a feira cresceu junto com a cidade, tornando-se um importante motor de desenvolvimento social e econômico.Hoje, a Feira de Caruaru atrai milhares de pessoas em busca de uma vasta gama de produtos, incluindo roupas, sapatos, alimentos, utensílios de barro, ferramentas, móveis, eletrodomésticos usados e ferro-velho.", navTitle: "Feira de Caruaru", location: "Feira da Sulanca Parque 18 de Maio, Nossa Senhora das Dores, S/N, Caruaru-PE", images: ["https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhDrLSv3vZ9CTSyr2ryR_wsmmTAh7I_pQBjdOPkpqp-r38qDyev4WjYv2n1DgTaMCr9OJ3r4XPGDhqZTUpVoA0FVq95FoLv5FpUhC8LSUHPJQgVZ3ZxlcJqKlaLbiTEYrLakx8h5EHtQX8/s640/Entrada-da-feira-de-caruaru-famosa-e-cantada-pelo-rei-luiz-gonzaga.jpg","https://www.ipatrimonio.org/wp-content/uploads/2017/05/Feira-de-Caruaru.jpg", "https://www.atacadaodaroupa.com/image/catalog/blog/feira%20de%20caruaru.jpg"], category: "Artes Visuais", category2: "Caruaru"),
                 PlaceModel(title: "Teatro João Lyra Filho", description: "O Teatro Mamulengo Só-Riso é dedicado à arte do teatro de bonecos, encantando públicos de todas as idades. Além das apresentações de mamulengo, o espaço também abriga outras formas teatrais. É um importante centro de preservação e celebração dessa tradicional forma de teatro brasileiro.", navTitle: "Teatro João Lyra", location: "R. Visc. de Inhaúma, 999 - Maurício de Nassau, Caruaru - PE", images: ["https://cidade997.com.br/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-28-at-09.00.10-edited.jpeg","https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/0a/8a/95/teatro-joao-lyra-filho.jpg?w=1200&h=-1&s=1", "https://1.bp.blogspot.com/-gTyfe3VD5tU/YPrRcaIJ0WI/AAAAAAAAxIU/BVsVxsXc58s5CP9zFwGJdg8UZvFZ_o4vgCLcBGAsYHQ/s1280/WhatsApp%2BImage%2B2021-07-23%2Bat%2B11.20.35%2B%25281%2529.jpeg"], category: "Artes Cênicas", category2: "Caruaru"),
                 PlaceModel(title: "Teatro Mamulengo Só-riso", description: "O Teatro Mamulengo Só-Riso é dedicado à arte do teatro de bonecos, encantando públicos de todas as idades. Além das apresentações de mamulengo, o espaço também abriga outras formas teatrais. É um importante centro de preservação e celebração dessa tradicional forma de teatro brasileiro.", navTitle: "Teatro Mamulengo", location: "R. Treze de Maio, 117 - Varadouro, Olinda - PE, 53020-170", images: ["https://live.staticflickr.com/3391/3596090216_20180fa9c9_b.jpg","https://cdn.folhape.com.br/img/c/800/600/dn_arquivo/2022/06/mamulengo-teatro-riso-imagem-divulgacao.jpg", "https://wepa.unima.org/wp-content/uploads/2017/09/mamulengo-so-riso_04-3.jpg"], category: "Artes Cênicas", category2: "Olinda"),
                 PlaceModel(title: "Teatro Difusora", description: "O Teatro Difusora é um espaço dinâmico dedicado a apresentações teatrais e eventos culturais diversos. Com uma programação variada, ele atrai públicos interessados em artes cênicas e manifestações culturais. É um importante ponto de encontro para a comunidade artística local.", navTitle: "Teatro Difusora", location: "T. Difusora", images: ["https://static.wixstatic.com/media/a27d24_33120fe3eca64e928e33fec34fc2b51d~mv2_d_5184_3456_s_4_2.jpg/v1/fill/w_500,h_334,fp_0.50_0.50,q_90,usm_0.66_1.00_0.01/a27d24_33120fe3eca64e928e33fec34fc2b51d~mv2_d_5184_3456_s_4_2.webp", "https://fastly.4sqi.net/img/general/600x600/33798284_1g1MFFzQBlcQwilhQlYywXZUrz-OZOP-AIrhhxRR2ng.jpg", "https://gge.com.br/web/wp-content/uploads/2017/11/IMG_3493.jpg"]
, category: "Artes Cênicas", category2: "Caruaru"),
                 PlaceModel(title: "Teatro Apolo", description: "Um dos teatros mais antigos do Brasil, o Teatro de Santa Isabel é um marco histórico e cultural. Inaugurado em 1850, ele encanta com sua arquitetura neoclássica. \nO teatro oferece uma rica programação de peças de teatro, óperas e concertos.O Teatro Apolo é um vibrante espaço cultural em Recife, conhecido por suas apresentações teatrais e eventos diversos. \nCom uma rica história que remonta ao século XIX, o teatro é um importante palco para a cena artística local. Oferece uma programação variada, incluindo peças, festivais e outras manifestações culturais.", navTitle: "Teatro Apolo", location: "R. do Apolo, 121 - Recife, PE", images: ["https://visit.recife.br/wp-content/uploads/2017/10/o-que-fazer-teatro-apolo-destaque.jpg","https://visit.recife.br/wp-content/uploads/2017/10/o-que-fazer-teatro-apolo-lista-02.jpg", "https://www2.recife.pe.gov.br/sites/default/files/styles/imagem_slide_home/public/_teatro_apolo_1.jpg?itok=BCmtQZz8"], category: "Artes Cênicas", category2: "Recife"),
                 PlaceModel(title: "Teatro de Santa Isabel", description: "Um dos teatros mais antigos do Brasil, o Teatro de Santa Isabel é um marco histórico e cultural. Inaugurado em 1850, ele encanta com sua arquitetura neoclássica. O teatro oferece uma rica programação de peças de teatro, óperas e concertos.", navTitle: "T. Santa Isabel", location: "Praça da República - Santo Antônio\nRecife - PE", images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNEvjaZs_e-aJHNWMCE7eTzLKHD0q3OSiR9w&s","https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Teatro_de_Santa_Isabel%2C_Recife%2C_Pernambuco%2C_Brasil.jpg/1280px-Teatro_de_Santa_Isabel%2C_Recife%2C_Pernambuco%2C_Brasil.jpg", "https://upload.wikimedia.org/wikipedia/commons/f/fe/Fachada_principal_do_teatro_de_Santa_Isabel_-_Recife.jpg"], category: "Artes Cênicas", category2: "Recife"),
                 PlaceModel(title: "Cinema da Fundação Joaquim Nabuco-Derby", description: "O Cinema da Fundação Joaquim Nabuco é um espaço cultural em Recife dedicado à exibição de filmes de arte, documentários e produções independentes. Com uma programação diversificada, promove o cinema como uma forma de expressão cultural e educativa. É um ponto de encontro para cinéfilos e apreciadores da sétima arte.", navTitle: "Fundaj Derby", location: "R. Henrique Dias, 609 - Derby, Recife - PE", images: ["https://cdn.folhape.com.br/upload/dn_arquivo/2020/03/fundaj-predio.jpg","https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2020/03/13/821434/20200313154251900433o.jpg", "https://s2.glbimg.com/5iEJlRbr_muOsAzjloKNJNVDxlwX2ICcFOoq4Mip_ZlIoz-HdGixxa_8qOZvMp3w/s.glbimg.com/jo/g1/f/original/2012/11/28/fundaj.jpg"]
, category: "Cinema", category2: "Recife"), 
                 PlaceModel(title: "Cinema da Fundação Joaquim Nabuco-Museu", description: "O Cinema da Fundação Joaquim Nabuco é um espaço cultural em Recife dedicado à exibição de filmes de arte, documentários e produções independentes. Com uma programação diversificada, promove o cinema como uma forma de expressão cultural e educativa. É um ponto de encontro para cinéfilos e apreciadores da sétima arte.", navTitle: "Fundaj Museu", location: "Av. Dezessete de Agosto, 2187, Recife - PE", images: ["https://fadurpe.com.br/wp-content/uploads/2021/12/fachada-Fundaj.jpeg", "https://gncnews.com.br/img/crop?img=3694a6cecac6793dcabc10d18b330568.jpeg&w=800&h=400&fit=crop&fm=jpq&q=90", "https://oxerecife.com.br/wp-content/uploads/2020/07/julho2020fundajcampus.jpg"], category: "Cinema", category2: "Recife"),
                 PlaceModel(title: "Teatro do Parque", description: "O Teatro do Parque é um tradicional teatro em Recife, conhecido por sua rica história e programação cultural variada. Inaugurado em 1915, o teatro oferece uma ampla gama de eventos, incluindo peças teatrais, shows musicais e festivais de cinema. É um marco cultural e histórico, atraindo um público diverso para suas apresentações artísticas.", navTitle: "Teatro do Parque", location: "R. do Hospício, 81 - Boa Vista, Recife - PE", images: ["https://teatrodoparque.recife.pe.gov.br/sites/default/files/2020-12/ARB_3638_24112020_Foto_Andrea_Rego_Barros_0.jpg", "https://teatrodoparque.recife.pe.gov.br/sites/default/files/styles/slide_home_teatro/public/2023-07/Teatro%20do%20Parque_compressed_0.jpeg?itok=Uj7_7K9V", "https://visit.recife.br/wp-content/uploads/2021/01/teatro-do-parque-destaque-1.jpg"], category: "Cinema", category2: "Recife"),
                 PlaceModel(title: "Sesc Caruaru", description: "O Sesc Caruaru é um centro cultural dinâmico que oferece uma ampla gama de exibições de filmes e eventos culturais. Com uma programação diversificada, o espaço promove o acesso à arte e cultura para a comunidade local. É um ponto de encontro para atividades educativas, artísticas e recreativas em Caruaru.", navTitle: "Sesc Caruaru", location: "R. Rui Limeira Rosal, s/n - Petrópolis, Caruaru - PE", images: ["https://www.sescpe.org.br/wp-content/uploads/2024/05/Cinema_Centro-Cultural_-26_-28-de-fev-2024-Thalyta-Tavares_Maker-Midia-3-scaled-600x490.jpg", "https://www.sescpe.org.br/wp-content/uploads/2015/11/LEO_0091-e1477485337843.jpg", "https://www.sescpe.org.br/wp-content/uploads/2021/08/Caruaru_2021_teatro_Ft-MakerMidia.jpg"], category: "Cinema", category2: "Caruaru"),
                 PlaceModel(title: "Sala de Reboco", description: "A Sala de Reboco é um espaço cultural localizado em Recife, Pernambuco, dedicado à preservação e difusão da cultura nordestina, especialmente o forró pé-de-serra. Inaugurada em 2003, é conhecida por suas apresentações ao vivo de música tradicional nordestina, reunindo músicos locais e nacionais. O ambiente acolhedor e intimista proporciona uma experiência autêntica aos visitantes interessados na cultura e na dança típica da região.", navTitle: "Sala de Reboco", location: "R. Gregório Júnior, 264 - Cordeiro, Recife - PE", images: ["https://s2-g1.glbimg.com/2czuTqULGp6ByTX2vHobum4oWas=/0x0:3008x2000/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/3/x/fMzknPSpAogNVK005l4w/sala-de-reboco-tem-programacao-de-pe-de-serra.jpg", "https://www.ibahia.com/wp-content/uploads/fileadmin/representativas/RTEmagicC_sala_de_reboco_01.jpg.jpg", "https://i.ytimg.com/vi/Uwp77g-qDJg/hqdefault.jpg"]
, category: "Música", category2: "Recife"),
                 PlaceModel(title: "Paço do Frevo", description: "O Paço do Frevo é um museu vibrante dedicado ao frevo, um dos mais emblemáticos ritmos musicais do Brasil. Além das exposições interativas, o espaço oferece apresentações musicais e de dança, celebrando a rica herança cultural do frevo. É um ponto de encontro para amantes da música e da tradição pernambucana.", navTitle: "Paço do Frevo", location: "R. da Guia, s.n - Recife, PE", images: ["https://cdn.folhape.com.br/upload/dn_arquivo/2021/11/1paco-do-frevo.jpg", "https://www2.recife.pe.gov.br/sites/default/files/styles/imagem_slide_home/public/arb_12022014_00529_foto_andrea_rego_barros_3.jpg?itok=BQPbCqEf", "https://visit.recife.br/wp-content/uploads/2017/10/paco-frevo-1.png"], category: "Música", category2: "Recife"),
                 PlaceModel(title: "São João de Caruaru", description: "São João de Caruaru é a maior festa de São João do Brasil, conhecida por suas vibrantes celebrações e apresentações musicais. A cidade se transforma em um grande arraial, com quadrilhas, fogueiras e shows de artistas renomados. É uma festa tradicional que atrai milhares de visitantes anualmente.", navTitle: "São João Caruaru", location: "Caruaru - PE", images: ["https://blog.buser.com.br/wp-content/uploads/2022/06/Sao-joao-caruaru.png", "https://s2-g1.glbimg.com/pvH7wYyKDb4jdzasJs402wKWxLA=/0x0:2048x1241/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/b/c/zUZyrGSkWnf9TraCIjzA/27631956310-f5fe652162-k.jpg", "https://www.voltologo.net/wp-content/uploads/2022/11/sao-joao-caruaru-hoteis.webp"], category: "Música", category2: "Caruaru"),
                 PlaceModel(title: "Pátio de Eventos Luiz Gonzaga", description: "Ocupa um antigo casarão do século 19. Conhecida por ser a residência do famoso cantor e compositor Alceu Valença, a casa é ocasionalmente aberta ao público para eventos e apresentações musicais.", navTitle: "Pátio Luiz Gonzaga", location: "R. Agnelo Dias Vidal - Nossa Sra. das Dores, Caruaru - PE", images: ["https://media-cdn.tripadvisor.com/media/photo-s/10/b1/85/d0/patio-luiz-gonzaga.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Caruaru-Pátio-de-eventos-camarotes-2005.jpg/1280px-Caruaru-Pátio-de-eventos-camarotes-2005.jpg", "https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2023/04/daniel-enquadramento-capa-17.jpg"], category: "Música", category2: "Caruaru"),
                 PlaceModel(title: "Biblioteca Álvaro Lins de Caruaru", description: "Inaugurado no ano de 1999, o Museu do Cordel, localizado no Parque 18 de Maio, na Feira de Artesanato de Caruaru, é uma homenagem ao cordelista Olegário Fernandes da Silva, que descreveu a história do homem nordestino de forma extrovertida e poética. \nO acervo do Museu conta com cordéis tradicionais, antigos e raros, fotografias de poetas, livros sobre o assunto e máquinas de xilogravuras e linogravuras.", navTitle: "Biblioteca Álvaro Lins", location: "R. Cel. Limeira - Nossa Sra. das Dores, Caruaru - PE", images: ["https://blogcenario.com.br/wp-content/uploads/2024/05/b9f14c50-b144-4e47-b667-15280f58f3fc-1-edited.jpeg", "https://s2-g1.glbimg.com/UqtE1UjM7IQRK3aeyynFPuNJmbo=/0x0:1600x1068/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2024/r/O/7rYUkHTlKJnb8yjqQePw/whatsapp-image-2024-05-14-at-09.47.33.jpeg", "https://blogdoalberesxavier.com/uploads/geral/1200x_0.270038001715692461.jpeg"], category: "Literatura", category2: "Caruaru"), PlaceModel(title: "Museu do Cordel Olegário Fernandes", description: "Inaugurado no ano de 1999, o Museu do Cordel, localizado no Parque 18 de Maio, na Feira de Artesanato de Caruaru, é uma homenagem ao cordelista Olegário Fernandes da Silva, que descreveu a história do homem nordestino de forma extrovertida e poética. \nO acervo do Museu conta com cordéis tradicionais, antigos e raros, fotografias de poetas, livros sobre o assunto e máquinas de xilogravuras e linogravuras.", navTitle: "Museu do Cordel", location: "Parque 18 de Maio, S/N, Feira de Caruaru, Vassoural, Caruaru, PE", images: ["https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhxacIcEr798VmdNOAoNyIHedpQfe_Dsm-IBYq0vsA5oiuY62M04WP0GluH3Xo86-kQErgIvNq_7zeIcPwwiMHTpaVIssoX5mcjV5GdK0o_XPNUgLS42ZbHy_kb4k0CGSiiIChLdBGfWWQ/s1600/ARQUIVO+++.03.2012+081.jpg", "https://media-cdn.tripadvisor.com/media/photo-s/06/a1/73/fc/um-cenario-de-dentro.jpg", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhkG82VqiktxAkp8xkPB9hLWdaS4elXADHfAdEPZx1bPD2mZAY4WHgCKI7pzWzws4gE0VbCCsr7SZ6SO1R6FluqhhwLAaSQXaA2SKNf3NdagKM5IUWXGiF5ZcD_FBIZyRHvkdQHSihxvI8/s1600/Mus_Cordel_int1.JPG"], category: "Literatura", category2: "Caruaru"),
                 PlaceModel(title: "Biblioteca Pública de Olinda", description: "A Biblioteca Pública de Olinda, inaugurada em 1830, está situada no sítio histórico de Olinda, a biblioteca possui um rico acervo de livros, periódicos e documentos históricos, atendendo a pesquisadores, estudantes e a comunidade em geral. \nAlém de seu acervo, a biblioteca promove eventos culturais, oficinas e atividades educativas, contribuindo para o desenvolvimento cultural da região.", navTitle: "Biblioteca de Olinda", location: "Av. Liberdade, 100 - Carmo, Olinda - PE", images: ["https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2019/09/17/803673/20190917134957832206o.jpeg", "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Biblioteca_Pública_de_Olinda_03.jpg/1280px-Biblioteca_Pública_de_Olinda_03.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Biblioteca_Pública_de_Olinda_04.jpg/2560px-Biblioteca_Pública_de_Olinda_04.jpg"], category: "Literatura", category2: "Olinda"),
                 PlaceModel(title: "Bienal do Livro de Pernambuco", description: "A Bienal do Livro de Pernambuco, realizada bienalmente em Recife, é um importante evento cultural que promove a leitura e a literatura. Reunindo editoras, livreiros, escritores e leitores, oferece venda de livros, palestras, mesas-redondas, lançamentos de obras e atividades para crianças e jovens. É vital para fortalecer o mercado editorial regional e nacional, contribuindo para a cultura e a educação através dos livros.", navTitle: "Bienal do Livro", location: "Centro de Convenções, Olinda - PE", images: ["https://upload.wikimedia.org/wikipedia/commons/9/93/Bienal_de_Pernambuco.jpg", "https://www.publishnews.com.br/estaticos/uploads/2019/09/KvEv6yT7euhRN1A5tuGlaAxDTWzakPRz6xuthvCW0xJ4sOLhfQmRo4731UQ30uvowNsefgdFXXHeSUTG.jpg", "https://s2-g1.glbimg.com/wugdzkiF7EWg98x9NhmceFTUa50=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2023/I/D/q4QPKDTimNN7RaGm0A8g/bienal-do-livro.jpg"], category: "Literatura", category2: "Olinda"),
                 PlaceModel(title: "Academia Pernambucana de Letras", description: "A Academia Pernambucana de Letras, fundada em 1901, é uma instituição literária dedicada à promoção e preservação da literatura de Pernambuco. \nLocalizada em Recife, possui uma biblioteca rica em obras regionais e organiza eventos culturais e literários. A academia é um ponto de referência para escritores e estudiosos da literatura pernambucana.", navTitle: "Academia de Letras", location: "Av. Rui Barbosa, 1596 - Graças, Recife - PE", images: ["https://www.gncnews.com.br/assets/uploads/14324232d6d6be5a389cc733ee331a1f.png", "https://aplpernambuco.com.br/wp-content/uploads/2019/12/02_Sala-dos-Acadêmicos.jpg", "https://visit.recife.br/wp-content/uploads/2018/04/o-que-fazer-academia-brasileira-de-letras-destaque.jpg"], category: "Literatura", category2: "Recife"),
                 PlaceModel(title: "Fundação Joaquim Nabuco (Fundaj)", description: "A Fundação Joaquim Nabuco (Fundaj) de Recife é uma instituição federal ligada ao Ministério da Educação, dedicada à pesquisa, educação e cultura no Nordeste. Criada em 1949, promove estudos socioeconômicos, históricos e culturais, além de abrigar o Museu do Homem do Nordeste. A Fundaj também oferece programas educativos e apoia políticas públicas na região.", navTitle: "Fundaj", location: "Av. 17 de Agosto, 2187 - Casa Forte - Recife / PE", images: ["https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2019/07/19/795975/20190719111748372292i.jpg", "https://s2-g1.glbimg.com/dl7XVnJv2ngCJ4_R6spM6WChvEs=/0x0:1000x667/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/3/l/0ajoAWSgaAwQBZdQ3x5A/whatsapp-image-2017-03-18-at-17.28.23.jpeg", "https://marcozero.org/wp-content/uploads/2020/03/Fundaj2-1024x683.jpg"], category: "Literatura", category2: "Recife"),
                 PlaceModel(title: "Museu Do Barro De Caruaru (MUBAC)", description: "O Museu do Barro destaca em suas coleções os principais polos de cerâmica popular da região enfatizando sua preservação e promoção. O museu está situado no Espaço Zé Caboclo, assim batizado em homenagem a um dos mais conhecidos artesãos do Alto do Moura, povoado famoso por sua forte cultura de raiz e localizado a seis quilômetros do Centro de Caruaru. Também no Alto do Moura viveu outro artista: o exímio modelador do barro Mestre Vitalino.", navTitle: "MUBAC", location: "Praça Coronel José de Vasconcelos, 100 Centro – Caruaru", images: ["https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/98/6b/d8/museu-do-barro-e-museu.jpg?w=700&h=-1&s=1", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEitii8AivDtvYEllyPfVtbTFD0rOOoA0OiPM-1ad8WEkhBzuJpLsYRWzoZI3wVp2wUQ875IbwCm-DedANpjJvqckVtgHxDgK15WesW8Nf_C02Nf16OetXliDPWg1YTiphgE2S1Kpl5Pn3k/s1600/caruaru33.jpg", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi1OX3N3_uef1dJ6mxqjHl8p-puIvGSNiAc3zWIkc5s2Y8oF4RWRnIIBRzDfU5Ac2Pfxbh23NQebTwgjWqCrP4Nx7a3wF9Qx_pNNAS9iNZ2MyTabLG2_VueaY4ZaEgd_A7Je18fhCHvWb4/s1600/caruaru39.jpg"], category: "Artes Visuais", category2: "Caruaru"),
                 PlaceModel(title: "Casa Estação da Luz", description: "Ocupa um antigo casarão do século 19. Conhecida por ser a residência do famoso cantor e compositor Alceu Valença, a casa é ocasionalmente aberta ao público para eventos e apresentações musicais.", navTitle: "Estação da Luz", location: "R. Prudente de Morais, 313 - Carmo, Olinda - PE", images: ["https://imagens.ne10.uol.com.br/veiculos/_midias/jpg/2024/01/11/casa_estacao_da_luz-26054385.jpg", "https://s2-casaejardim.glbimg.com/5ypogsht33NMRcFOKPfvxZe_Te8=/0x0:1400x1221/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_a0b7e59562ef42049f4e191fe476fe7d/internal_photos/bs/2023/d/4/1IoOq7SZa4s6OCLbcfzw/estacao-da-luz1.jpg", "https://www.joaoalberto.com/wp-content/uploads/2021/09/20/JARDIM-7-DESEJOS.jpg"], category: "Música", category2: "Olinda")
]
let visualArtPlaces = allPlaces.filter { $0.category == "Artes Visuais" }
let performingArtsPlaces = allPlaces.filter { $0.category == "Artes Cênicas" }
let cinemaPlaces = allPlaces.filter { $0.category == "Cinema" }
let musicPlaces = allPlaces.filter { $0.category == "Música" }
let literaturePlaces = allPlaces.filter { $0.category == "Literatura" }
let recifePlaces = allPlaces.filter { $0.category2 == "Recife" }
let olindaPlaces = allPlaces.filter { $0.category2 == "Olinda" }
let caruaruPlaces = allPlaces.filter { $0.category2 == "Caruaru" }


var visualArt: Category = Category(
    name: "Artes Visuais", images: visualArtPlaces.map { $0.images.first ?? "" },
    titles: visualArtPlaces.map { $0.navTitle },
    destinationA: TelaArtesVisuais(),
    destinationB: visualArtPlaces.map { place in
        AnyView(TelaLugares(
            statusBotao: true,
            isHeartFilled: false,
            title: place.title,
            location: place.location,
            description: place.description,
            navTitle: place.navTitle,
            images: place.images
        ))
    }
)
var performingArts: Category = Category(
    name: "Artes Cênicas",
    images: performingArtsPlaces.map { $0.images.first ?? "" },
    titles: performingArtsPlaces.map { $0.navTitle },
    destinationA: TelaArtesCenicas(),
    destinationB: performingArtsPlaces.map { place in
        AnyView(TelaLugares(
            statusBotao: true,
            isHeartFilled: false,
            title: place.title,
            location: place.location,
            description: place.description,
            navTitle: place.navTitle,
            images: place.images
        ))
    }
)
var cinema: Category = Category(
    name: "Cinema",
    images: cinemaPlaces.map { $0.images.first ?? "" },
    titles: cinemaPlaces.map { $0.navTitle },
    destinationA: TelaCinema(),
    destinationB: cinemaPlaces.map { place in
        AnyView(TelaLugares(
            statusBotao: true,
            isHeartFilled: false,
            title: place.title,
            location: place.location,
            description: place.description,
            navTitle: place.navTitle,
            images: place.images
        ))
    }
)
var music: Category = Category(
    name: "Música",
    images: musicPlaces.map { $0.images.first ?? "" },
    titles: musicPlaces.map { $0.navTitle },
    destinationA: TelaMusica(),
    destinationB: musicPlaces.map { place in
        AnyView(TelaLugares(
            statusBotao: true,
            isHeartFilled: false,
            title: place.title,
            location: place.location,
            description: place.description,
            navTitle: place.navTitle,
            images: place.images
        ))
    }
)
var literature: Category = Category(
    name: "Literatura",
    images: literaturePlaces.map { $0.images.first ?? "" },
    titles: literaturePlaces.map { $0.navTitle },
    destinationA: TelaLiteratura(),
    destinationB: literaturePlaces.map { place in
        AnyView(TelaLugares(
            statusBotao: true,
            isHeartFilled: false,
            title: place.title,
            location: place.location,
            description: place.description,
            navTitle: place.navTitle,
            images: place.images
        ))
    }
)
var cultura = true
var recife : Category = Category(
    name:"Recife",
    images: recifePlaces.map { $0.images.first ?? "" },
    titles: recifePlaces.map { $0.navTitle },
    destinationA: TelaRecife(),
    destinationB: recifePlaces.map { place in
        AnyView(TelaLugares(
            statusBotao: true,
            isHeartFilled: false,
            title: place.title,
            location: place.location,
            description: place.description,
            navTitle: place.navTitle,
            images: place.images
        ))
    }
)
var olinda: Category = Category(
    name: "Olinda",
    images: olindaPlaces.map { $0.images.first ?? "" },
    titles: olindaPlaces.map { $0.navTitle },
    destinationA: TelaOlinda(),
    destinationB: olindaPlaces.map { place in
        AnyView(TelaLugares(
            statusBotao: true,
            isHeartFilled: false,
            title: place.title,
            location: place.location,
            description: place.description,
            navTitle: place.navTitle,
            images: place.images
        ))
    }
)
let caruaru: Category = Category(
    name: "Caruaru",
    images: caruaruPlaces.map { $0.images.first ?? "" },
    titles: caruaruPlaces.map { $0.navTitle },
    destinationA: TelaCaruaru(),
    destinationB: caruaruPlaces.map { place in
        AnyView(TelaLugares(
            statusBotao: true,
            isHeartFilled: false,
            title: place.title,
            location: place.location,
            description: place.description,
            navTitle: place.navTitle,
            images: place.images
        ))
    }
)