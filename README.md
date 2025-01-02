CRM (Müşteri İlişkileri Yönetimi) Veritabanı Projesi

Proje Amacı:
Bu proje, şirketlerin müşteri ilişkilerini etkin bir şekilde yönetmelerini sağlamak için tasarlanmış kapsamlı bir CRM (Müşteri İlişkileri Yönetimi) veritabanı sistemidir. Veritabanı, şirketlerin müşteri bilgilerini, siparişlerini, ürünlerini, kampanyalarını ve destek taleplerini organize etmelerine yardımcı olacak şekilde yapılandırılmıştır. Sistemde farklı tablolar arasındaki ilişkiler, müşteri davranışlarını ve taleplerini daha iyi analiz etmek için detaylı olarak planlanmıştır.

Proje Yapısı:
Veritabanı, toplamda 20 tabloyu içermekte olup, bu tablolar birbirleriyle mantıksal olarak ilişkilendirilmiştir. Her tablo, farklı bir işlevi yerine getirmek üzere tasarlanmıştır. Tabloların temel amaçları ve içerikleri şu şekildedir:

Users: Sistem kullanıcılarının bilgilerini tutar.

Örnek veri: Kullanıcı adı, e-posta, telefon numarası.

Roles: Kullanıcı rollerini tanımlar.

Örnek veri: Yönetici, destek temsilcisi, satış temsilcisi.

Customers: Müşteri bilgilerini saklar.

Örnek veri: Ad, soyad, adres, e-posta, telefon numarası.

Products: Ürün bilgilerini tutar.

Örnek veri: Ürün adı, fiyat, stok miktarı.

Orders: Müşteri siparişlerini kayıt altına alır.

Örnek veri: Sipariş tarihi, toplam tutar, müşteri ID.

OrderDetails: Siparişlerdeki ürünlerin detaylarını saklar.

Örnek veri: Sipariş ID, ürün ID, miktar, fiyat.

Invoices: Siparişlerle ilişkili faturaları kaydeder.

Örnek veri: Fatura tarihi, vade tarihi, toplam tutar.

Payments: Fatura ödemelerini kayıt eder.

Örnek veri: Ödeme tarihi, tutar, ödeme yöntemi.

SupportTickets: Müşteri destek taleplerini takip eder.

Örnek veri: Talep konusu, açıklama, durum.

Interactions: Müşteri ile yapılan etkileşimlerin detaylarını saklar.

Örnek veri: Etkileşim tarihi, notlar.

Campaigns: Şirket kampanyalarını organize eder.

Örnek veri: Kampanya adı, başlangıç ve bitiş tarihleri, bütçe.

CampaignCustomers: Kampanyaya dahil olan müşterileri kayıt eder.

Örnek veri: Kampanya ID, müşteri ID.

Tasks: Kullanıcılara atanılan görevleri yönetir.

Örnek veri: Atanan kişi, görev açıklaması, teslim tarihi.

CustomerFeedback: Müşteri geri bildirimlerini kayıt eder.

Örnek veri: Geri bildirim tarihi, puanlama, yorum.

ProductCategories: Ürün kategorilerini saklar.

Örnek veri: Kategori adı.

ProductCategoryMapping: Ürün ve kategoriler arası ilişkileri kurar.

Örnek veri: Ürün ID, kategori ID.

EmailLogs: Müşterilere gönderilen e-postaları kayıt eder.

Örnek veri: E-posta başlığı, e-posta metni, gönderim tarihi.

SMSLogs: Müşterilere gönderilen SMS mesajlarını kayıt eder.

Örnek veri: Mesaj metni, gönderim tarihi.

Tablolar Arasındaki İlişkiler:

FK Bağlantıları:

Customers ve Orders tabloları arasında müşteri ID ile ilişki.

Orders ve OrderDetails arasında sipariş ID ile ilişki.

Products ve OrderDetails arasında ürün ID ile ilişki.

Orders ve Invoices arasında sipariş ID ile ilişki.

Invoices ve Payments arasında fatura ID ile ilişki.

Campaigns ve CampaignCustomers arasında kampanya ID ile ilişki.

Customers ve CampaignCustomers arasında müşteri ID ile ilişki.

Kullanım Alanları:
Bu CRM veritabanı, aşağıdaki çeşitli amaçlar için kullanılabilir:

Müşteri Takibi: Müşterilerin siparişleri, geri bildirimleri ve destek talepleri izlenebilir.

Satış ve Pazarlama: Kampanyaların etkinliği analiz edilebilir ve ürün kategorileri bazında satışlar takip edilebilir.

Finansal Takip: Faturalar, ödemeler ve toplam gelir raporlanabilir.

Destek Yönetimi: Müşteri destek talepleri ve çözüm süreçleri yönetilebilir.

Geri Bildirim Analizi: Müşteri memnuniyet puanları ve yorumları analiz edilebilir.

Bu proje, şirketlerin müşteri merkezli bir yaklaşımla işlerini optimize etmelerine yardımcı olacak bir altyapı sunmaktadır.

