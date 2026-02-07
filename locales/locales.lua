local lang = 'en'
local ok, result = pcall(function() return Config.Locale end)
if ok and (result == 'ar' or result == 'en') then
    lang = Config and Config.Locale == 'ar' and 'ar' or 'en'
end

Locales = {
    ['en'] = {
        ['not_authorized'] = "You are not authorized to use this shop",
        ['weapon_license_required'] = "You need a weapon license to purchase this",
        ['not_enough_money'] = "Not enough money",
        ['item_not_available'] = "This item is not available",
        ['failed_inventory_add'] = "Could not add item to inventory",
        ['invalid_shop'] = "Invalid shop",
        ['invalid_total'] = "Invalid purchase total",
        ['purchase_successful'] = "Purchase successful!",
        ['open_shop'] = "Open Shop",
    },
    ['ar'] = {
        ['not_authorized'] = "غير مسموح لك باستخدام هذا المتجر",
        ['weapon_license_required'] = "تحتاج إلى رخصة سلاح لشراء هذا",
        ['not_enough_money'] = "لا يوجد مال كافٍ",
        ['item_not_available'] = "هذا العنصر غير متوفر",
        ['failed_inventory_add'] = "تعذرت إضافة العنصر إلى المخزون",
        ['invalid_shop'] = "المتجر غير صالح",
        ['invalid_total'] = "إجمالي الشراء غير صالح",
        ['purchase_successful'] = "تم الشراء بنجاح!",
        ['open_shop'] = "فتح المتجر",
    }
}

function _U(key, ...)
    local str = Locales[lang] and Locales[lang][key] or (Locales['en'] and Locales['en'][key]) or key
    return string.format(str, ...)
end
