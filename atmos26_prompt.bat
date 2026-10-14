python watermark_wizard.py .\input_images\white_watermark .\temp_images --logo assets\dopyw.png --position top-right --opacity 250 --size 9 --offset 1,1 && ^
python watermark_wizard.py .\input_images\black_watermark .\temp_images --logo assets\dopyb.PNG --position top-right --opacity 250 --size 9 --offset 1,1 && ^
python watermark_wizard.py .\temp_images .\output_images --logo assets\atmos26.png --position top-left --opacity 250 --size 10 --offset 1,1 && ^
rmdir /s /q .\temp_images
