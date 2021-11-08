#!/bin/bash

echo "Region: $1"
echo "Source Language: $2"
echo "Target Language: $3"
echo "Input Text: $4"

#supported Translate Languages
translateLanguages=('af' 'sq' 'am' 'ar' 'hy' 'az' 'bn' 'bs' 'bg' 'ca' 'zh' 'zh-TW' 'hr' 'cs' 'da' 'fa-AF' 'nl' 'en' 'et' 'fa' 'tl' 'fi' 'fr'
'fr-CA' 'ka' 'de' 'el' 'gu' 'ht' 'ha' 'he' 'hi' 'hu' 'is' 'id' 'it' 'ja' 'kn' 'kk' 'ko' 'lv' 'lt' 'mk' 'ms' 'ml' 'mt' 'mn' 'no' 'fa' 'ps'
'pl' 'pt' 'ro' 'ru' 'sr' 'si' 'sk' 'sl' 'so' 'es' 'es-MX' 'sw' 'sv' 'tl' 'ta' 'te' 'th' 'tr' 'uk' 'ur' 'uz' 'vi' 'cy')


#Check if source and target languages are supported
if [[ " ${translateLanguages[*]} " == *"$2"* ]];
then
    echo "$2 is supported by AWS Translate!"
else
    echo "AWS Translate does not currently support $2. The following language codes are currently supported: echo ${translateLanguages[*]}"
fi

if [[ " ${translateLanguages[*]} " == *"$3"* ]];
then
    echo "$3 is supported by AWS Translate!"
else
    echo "AWS Translate does not currently support $3. The following language codes are currently supported: echo ${translateLanguages[*]}"
fi

aws translate translate-text \
            --region $1 \
            --source-language-code $2 \
            --target-language-code $3 \
            --text $4
